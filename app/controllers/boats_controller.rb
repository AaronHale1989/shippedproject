class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    boat = Boat.new(boat_params)
    @job.id = params[:job_id]
    if boat.save
      redirect_to "/"
    else
      render "/boats/new"
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :user_id, :description, :origin, :cost, :destination, :job_containers)
  end

end
