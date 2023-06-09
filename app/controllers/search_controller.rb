class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category = params[:category]
    @results = search_results(@query, @category)
    @results = policy_scope(search_results(@query, @category))
    # @results = Club.all
    @clubs = @results
  end

  def search_results(query, category)
    if query =~ /^\d{5}$/
      if category == "All"
        Club.joins(venues: :club).where("CAST(clubs.zip_code AS VARCHAR) LIKE ?", "%#{query}%")
      else
        Club.joins(:venues).where("clubs.zip_code = ? AND venues.category = ?", query.to_i, category)
      end
    elsif query =~ /^[a-zäöüß\s]+$/i
      if category == "All"
        Club.joins(venues: :club).where("LOWER(clubs.city) LIKE ?", "%#{query.downcase}%")
      else
        Club.joins(:venues).where("LOWER(clubs.city) LIKE ? AND venues.category = ?", "%#{query.downcase}%", category)
      end
    else
      @results = Club.all
    end
  end
end
