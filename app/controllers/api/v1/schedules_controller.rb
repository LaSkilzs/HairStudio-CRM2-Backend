class Api::V1::SchedulesController < ApplicationController
  
  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def create 
    schedule = Schedule.create(schedule_params)
    if schedule.save
      render json: schedule
    else
      render json: {errors: schedule.errors.full_messages}
    end
  end

  def show
    schedule = Schedule.find(params[:id])
    render json: schedule
  end

  def update
    schedule = Schedule.find(params[:id])
    if schedule.update(schedule_params)
    render json: schedule
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    render json: 204
  end

  private
  def schedule_params
    params.require(:schedule).permit(:name, :mon, :tue, :wed, :thu, :fri, :sat, :sun, :status, :salon_id, :user_id)
  end
end
