class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy]

  def index
    @venues = Venue.all
    @venues = policy_scope(Venue)
  end

  def show
    @booking = Booking.new
    authorize @venue
    @markers = [
      {
        lat: @venue.club.latitude,
        lng: @venue.club.longitude,
        info_window_html: render_to_string(partial: "shared/info_window", locals: { club: @venue.club })
      }
    ]
  end

  def new
    @venue = Venue.new
    authorize @venue
  end

  def edit
    authorize @venue
  end

  def destroy
    authorize @venue
    @venue.destroy
    redirect_to root_path, status: :see_other
  end

  def update
    authorize @venue
    if @venue.update(venue_params)
      redirect_to venue_path(@venue)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    authorize @venue
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :category, :club_id, photos: [])
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
