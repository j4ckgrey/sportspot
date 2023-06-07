class ClubsController < ApplicationController
  def index
    @clubs = Club.all
    @clubs = policy_scope(Club)
  end

  def show
    @club = Club.find(params[:id])
    authorize @venue
  end

  def new
    @club = Club.new
    authorize @club
  end

  def create
    @club = Club.new(club_params)
    @club.user = current_user
    #@club.address = "#{:street}, #{:city}, #{:zip_code}"
    #raise
    authorize @club
    # when a club is created, add the owner to the current user roles
  end

  private

  def club_params
    params.require(:club).permit(:name, :zip_code, :city, :street, :phone_number, :email, :user_id)
  end
end
