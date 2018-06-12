class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @job = Job.find(params[:id])
    @boats = Boat.find_by(user_id: current_user.id)
  end

  def assign
    @boats = Boat.find_by(id: current_user.id)
    schedule = Schedule.new(schedule_params)
    schedule.job_id = params[:job_id]
    if schedule.save
      redirect_to "/schedules"
    else
      redirect_to "/jobs/:id"
    end
  end

  def edit
  end

  def destroy
  end

  private

  def schedule_params
  params.require(:schedule).permit(:boat_id,:job_id,:start)
  end

end
