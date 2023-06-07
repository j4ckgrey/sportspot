class VenuesController < ApplicationController
  def index
    @venues = Venue.all
    @venues = policy_scope(Venue)
  end

  def show
    @venue = Venue.find(params[:id])
    authorize @venue
  end

  def new
    @venue = Venue.new
    authorize @venue
  end

  def edit
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to root_path, status: :see_other
  end

  def update
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
    params.require(:venue).permit(:name, :category, :club_id)
  end
end
