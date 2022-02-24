class AppointementsController < ApplicationController

  def new
    @machine = Machine.find(params[:machine_id])
    @appointement = Appointement.new
  end

  def create
    @machine = Machine.find(params[:machine_id])
    @appointement = Appointement.new(appointement_params)
    @appointement.machine = @machine
    @appointement.user = current_user
    if @appointement.save
      redirect_to appointements_path
    else
      render :new
    end
  end

  def index
    @appointements = Appointement.all
    redirect_to machines_path
  end

  def destroy
    @appointement = Appointement.find(params[:id])
    if @appointement.destroy
      redirect_to appointements_path
    end
  end

  private

  def appointement_params
    params.require(:appointement).permit(:begining_hour, :done, :user, :machine)
  end
end
