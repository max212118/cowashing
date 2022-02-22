class AppointementsController < ApplicationController
  def new
    @appointement = Appointement.new
  end

  def create
    @appointement = Appointement.new(appointement_params)
    @appointement.save
    redirect_to appointement_path(@appointement)
  end

  def index
    @appointement = Appointement.all
  end

  private

  def appointement_params
    params.require(:appointement).permit(:begining_hour, :done, :user, :machine)
  end
end
