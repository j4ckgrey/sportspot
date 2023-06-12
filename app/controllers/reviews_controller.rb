# app/controllers/reviews_controller.rb
class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:review][:booking_id])
    @review.booking = @booking
    @venue = @review.booking.venue
    authorize @review

    if @review.save
      redirect_to venue_path(@venue), notice: "Review created successfully."
    else
      render "pages/dashboard"
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :comment, :rating, :booking_id)
  end
end
