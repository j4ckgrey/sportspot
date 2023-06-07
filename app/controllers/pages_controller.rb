class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @clubs = Club.all
    @markers = @clubs.geocoded.map do |club|
      {
        lat: club.latitude,
        lng: club.longitude,
        info_window_html: render_to_string(partial: "shared/info_window", locals: {club: club})
      }
    end
  end
end
