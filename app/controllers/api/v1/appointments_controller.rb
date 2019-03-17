class Api::V1::AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create 
    appointment = Appointment.create(appointment_params)
    if appointment.save
      render json: appointment
    else
      render json: {errors: appointment.errors.full_messages}
    end
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: appointment
  end

  def update
    appointment = Appointment.find(params[:id])
    if appointment.update(appointment_params)
    render json: appointment
    end
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
    render json: 204
  end

  private
  def appointment_params
    params.require(:appointment).permit(:hairstyle, :date, :start, :duration, :status, :service_total)
  end
end
