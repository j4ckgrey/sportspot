class VenuesController < ApplicationController
  def index
    @venues = Venue.all
    @venues = policy_scope(Venue)
  end

  def show
    @venue = Venue.find(params[:id])
    @booking = Booking.new
    authorize @venue
  end

  def new
    @venue = Venue.new
    authorize @venue
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    authorize @venue
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :category, :club_id)
  end
end
