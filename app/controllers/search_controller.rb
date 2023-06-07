class SearchController < ApplicationController
  def index
    @query = params[:query].to_i
    @category = params[:category]
    @results = policy_scope(search_results(@query, @category))
  end

  def search_results(query, category)
    if category == "All"
      Club.joins(venues: :club).where("CAST(clubs.zip_code AS VARCHAR) LIKE ?", "%#{query}%")
    else
      Club.joins(:venues).where("clubs.zip_code = ? AND venues.category = ?", query.to_i, category)
    end
  end
end
