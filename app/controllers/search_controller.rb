class SearchController < ApplicationController
  def index
    @query = params[:query].to_i
    @category = params[:category]
    @results = policy_scope(search_results(@query, @category))
    @clubs = @results
    @markers = @clubs.geocoded.map do |club|
      {
        lat: club.latitude,
        lng: club.longitude,
        info_window_html: render_to_string(partial: "shared/info_window", locals: {club: club})
      }
    end
  end

  def search_results(query, category)
    if category == "All"
      Club.joins(venues: :club).where("CAST(clubs.zip_code AS VARCHAR) LIKE ?", "%#{query}%")
    else
      Club.joins(:venues).where("clubs.zip_code = ? AND venues.category = ?", query.to_i, category)
    end
  end
end
