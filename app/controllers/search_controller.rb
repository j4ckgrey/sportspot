class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category = params[:category]
    @results = search_results(@query, @category)
    @results = policy_scope(@results)

    if @query.blank?
      flash.now[:alert] = "You did not give any city or postal code. We are showing all the venues that offer #{@category}."
      @venues = Venue.all.includes(:club)
    else
      @venues = @results.includes(:club)
    end

    if @venues.present?
      @markers = @results.map do |venue|
        {
          lat: venue.club.latitude,
          lng: venue.club.longitude,
          info_window_html: render_to_string(partial: "shared/info_window", locals: { venue: venue })
        }
      end
    else
      @markers = []
    end
  end



  def search_results(query, category)
    if query =~ /^\d{5}$/
      if category.blank? || category == "All"
        Venue.joins(:club).where("CAST(clubs.zip_code AS VARCHAR) LIKE ?", "%#{query}%").distinct
      else
        Venue.joins(:club).where("clubs.zip_code = ? AND venues.category = ?", query.to_i, category).distinct
      end
    elsif query =~ /^[a-zäöüß\s]+$/i
      if category.blank? || category == "All"
        Venue.joins(:club).where("LOWER(clubs.city) LIKE ?", "%#{query.downcase}%").distinct
      else
        Venue.joins(:club).where("LOWER(clubs.city) LIKE ? AND venues.category = ?", "%#{query.downcase}%", category).distinct
      end
    elsif query == ""
      if category.blank? || category == "All"
        Venue.all.distinct
      else
        Venue.where(category: category).distinct
      end
    else
      Venue.all.distinct
    end
  end
end


# def search_results(query, category)
#   if query =~ /^\d{5}$/
#     if category.blank? || category == "All"
#       Club.joins(venues: :club).where("CAST(clubs.zip_code AS VARCHAR) LIKE ?", "%#{query}%").distinct
#     else
#       Club.joins(:venues).where("clubs.zip_code = ? AND venues.category = ?", query.to_i, category).distinct
#     end
#   elsif query =~ /^[a-zäöüß\s]+$/i
#     if category.blank? || category == "All"
#       Club.joins(venues: :club).where("LOWER(clubs.city) LIKE ?", "%#{query.downcase}%").distinct
#     else
#       Club.joins(:venues).where("LOWER(clubs.city) LIKE ? AND venues.category = ?", "%#{query.downcase}%", category).distinct
#     end
#   elsif query == ""
#     if category.blank? || category == "All"
#       Club.all.distinct
#     else
#       Club.joins(:venues).where("venues.category = ?", category).distinct
#     end

#   else
#     Club.all.distinct
#   end
# end
# end
