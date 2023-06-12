class ClubsController < ApplicationController
  before_action :set_club, only: %i[edit update]

  def index
    @clubs = Club.all
    @clubs = policy_scope(Club)
  end

  def show
    @club = Club.find(params[:id])
    @venues = @club.venues
    authorize @club
    @markers = [
      {
        lat: @club.latitude,
        lng: @club.longitude,

        info_window_html: render_to_string(partial: "shared/info_window", locals: { club: @club })
      }
    ]
  end

  def new
    @club = Club.new
    authorize @club
  end

  def create
    @club = Club.new(club_params)
    @club.user = current_user
    @club.address = "#{@club[:street]}, #{@club[:city]}, #{@club[:zip_code]}"
    authorize @club
    if @club.save
      redirect_to club_path(@club)
    else
      render :new, status: :unprocessable_entity
    end
    @club.user.roles = ['owner']
  end

  def edit
    authorize @club
  end

  def update
    authorize @club
    if @club.update(club_params)
      redirect_to club_path(@club)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def club_params
    params.require(:club).permit(:name, :zip_code, :city, :street, :phone_number, :email, :user_id)
  end

  def set_club
    @club = Club.find(params[:id])
  end
end
