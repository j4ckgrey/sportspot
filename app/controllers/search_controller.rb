class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category = params[:category]
    @results = search_results(@query, @category)
    @results = policy_scope(@results)

    if @query.blank?
      flash.now[:alert] = "Please provide a city or postal code."
      @clubs = Club.all
    else
      @clubs = @results
    end

    # Check if @clubs is not nil before assigning @markers
    if @clubs.present?
      @markers = @clubs.map do |club|
        {
          lat: club.latitude,
          lng: club.longitude,
          title: club.name,
          description: club.address
        }
      end
    else
      @markers = [] # Empty array if no clubs found
    end
  end

  def search_results(query, category)
    if query =~ /^\d{5}$/
      if category.blank? || category == "All"
        Club.joins(venues: :club).where("CAST(clubs.zip_code AS VARCHAR) LIKE ?", "%#{query}%").distinct
      else
        Club.joins(:venues).where("clubs.zip_code = ? AND venues.category = ?", query.to_i, category).distinct
      end
    elsif query =~ /^[a-zäöüß\s]+$/i
      if category.blank? || category == "All"
        Club.joins(venues: :club).where("LOWER(clubs.city) LIKE ?", "%#{query.downcase}%").distinct
      else
        Club.joins(:venues).where("LOWER(clubs.city) LIKE ? AND venues.category = ?", "%#{query.downcase}%", category).distinct
      end
    else
      Club.all.distinct
    end
  end



end
