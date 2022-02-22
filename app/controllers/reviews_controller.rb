class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    @review.save
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  redirect_to reviews_path
end
