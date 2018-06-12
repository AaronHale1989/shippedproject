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
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to "/boats"
    else
      redirect_to "/boats/:id"
    end
  end

  def destroy
    @boat = Boat.destroy(params[:id])
    redirect_to "/"
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :user_id, :boat_containers, :image)
  end

end
