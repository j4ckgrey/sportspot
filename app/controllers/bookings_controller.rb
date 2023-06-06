class BookingsController < ApplicationController
  def new
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @venue = Venue.find(params[:venue_id])
    @booking.venue = @venue
    @booking.user = current_user
    @club = @venue.club
    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = (params[:booking][:status])
    @booking.save
    redirect_to root_path, status: :see_other
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def booking_params
    params.required(:booking).permit(:start_date, :end_date)
  end
end
