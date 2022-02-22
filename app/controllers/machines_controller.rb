class MachinesController < ApplicationController

  def index
    @machines = Machine.all
  end

  def show
    @machine = Machine.find(params[:id])
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine =Machine.new(machine_params)
    @machine.save
    redirect_to machines_path
  end

  def edit
  end

  def destroy
  end

  private
  
  def machine_params
    params.require(:machine).permit(:brand, :capacity, :location, :price)
  end
end
