class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    boat = Boat.new(boat_params)
    boat.user_id = current_user.id
    if boat.save
      redirect_to "/boats"
    else
      render "/boats/new"
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
  end

  def destroy
    @boat = Boat.destroy(params[:id])
    redirect_to "/"
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :user_id, :boat_containers)
  end

end
