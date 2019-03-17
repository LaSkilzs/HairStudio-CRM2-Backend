class Api::V1::SalonsController < ApplicationController
  
  def index
    @salons = Salon.all
    render json: @salons
  end

  def create 
    salon = Salon.create(salon_params)
    if salon.save
      render json: salon
    else
      render json: {errors: salon.errors.full_messages}
    end
  end

  def show
    salon = Salon.find(params[:id])
    render json: salon
  end

  def update
    salon = Salon.find(params[:id])
    if salon.update(salon_params)
    render json: salon
    end
  end

  def destroy
    salon = Salon.find(params[:id])
    salon.destroy
    render json: 204
  end

  private
  def salon_params
    params.require(:salon).permit(:hairstyle, :date, :start, :duration, :status, :service_total)
  end
end
