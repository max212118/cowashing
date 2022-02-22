class ReviewsController < ApplicationController
  def new
    @appointement = Appointement.find(params[:appointement_id])
    @review = Review.new
  end

  def create
    @appointement = Appointement.find(params[:appointement_id])
    @review = Review.new(review_params)
    @review.appointement = @appointement
    @review.save
    redirect_to :root
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :root
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :appointement)
  end
end
