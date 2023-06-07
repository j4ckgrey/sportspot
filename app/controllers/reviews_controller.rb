# app/controllers/reviews_controller.rb
class ReviewsController < ApplicationController
  before_action :set_venue, only: [:index, :new, :create]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = policy_scope(@venue.reviews)
    @review = Review.new
    authorize @review
  end

  def show
    authorize @review
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = @venue.reviews.new(review_params)
    @review.user = current_user
    authorize @review

    if @review.save
      redirect_to venue_reviews_path(@venue), notice: "Review created successfully."
    else
      render :new
    end
  end


  def edit
    authorize @review
  end

  def update
    authorize @review

    if @review.update(review_params)
      redirect_to venue_reviews_path(@review.venue), notice: "Review updated successfully."
    else
      render :edit
    end
  end

  def destroy
    authorize @review
    @review.destroy
    redirect_to venue_reviews_path(@review.venue), notice: "Review deleted successfully."
  end

  private

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :comment, :rating)
  end
end
