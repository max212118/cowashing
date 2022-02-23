class MachinesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # a supp
    @user = current_user
    @machines = Machine.all
    @markers = @machines.geocoded.map do |machine|
      {
        lat: machine.latitude,
        lng: machine.longitude
      }
    end
  end

  def show
    @machine = Machine.find(params[:id])
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.user = current_user
    if @machine.save
      redirect_to machines_path
    else 
      render :new
    end
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])
    @machine.update(machine_params)
    @machine.user = current_user
    if @machine.save
      redirect_to machines_path
    else 
      render :update
    end

  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
    redirect_to machines_path
  end

  private
  
  def machine_params
    params.require(:machine).permit(:brand, :capacity, :location, :price)
  end
end
