class ReviewsController < ApplicationController
  def new
    @appointement = Appointement.find(params[:appointement_id])
    @review = Review.new
  end

  def create
    @appointement = Appointement.find(params[:appointement_id])
    @review = Review.new(review_params)
    @review.appointement = @appointement
    @review.user = current_user

    if @review.save
      redirect_to machine_path(@appointement.machine), alert: "review created!"
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :root
    redirect_to machines_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :appointement)
  end
end
