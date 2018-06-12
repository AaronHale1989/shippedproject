class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    j = Job.new(job_params)
    j.user_id = current_user.id
  if j.save
    redirect_to "/jobs/new"
  else
    render "/jobs/new"
  end
end
  end

  def show
    @job = Job.find(params[:id])
    @boats = Boat.find_by(id: current_user.id)
  end

  def edit
  end

  def assign
  	# j = Job.find(params[:id])
  	# j.boat_id = params[:]
  	# if j.update
  	# 	redirect_to "/"
  	# else
  	# 	render "/doctors"
  	# end
  end

  private
    def job_params
    params.require(:job).permit(:name, :description, :origin, :destination, :job_containers, :cost)
  end
