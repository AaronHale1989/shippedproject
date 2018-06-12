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


  def show
    @job = Job.find(params[:id])
    @boats = Boat.find(current_user.id)
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to "/"
    else
      render edit_job_path
    end
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
    redirect_to jobs_path(:id => current_user.id)
  end

  private
    def job_params
    params.require(:job).permit(:name, :description, :origin, :destination, :job_containers, :cost, :boat_id)
  end

end
