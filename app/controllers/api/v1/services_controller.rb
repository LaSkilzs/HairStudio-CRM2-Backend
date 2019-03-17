class Api::V1::ServicesController < ApplicationController
  def index
    @services = Service.all
    render json: @services
  end

  def create 
    service = Service.create(service_params)
    if service.save
      render json: service
    else
      render json: {errors: service.errors.full_messages}
    end
  end

  def show
    service = Service.find(params[:id])
    render json: service
  end

  def update
    service = Service.find(params[:id])
    if service.update(service_params)
    render json: service
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy
    render json: 204
  end

  private
  def service_params
    params.require(:service).permit(:name, :salon_id, :stylist_info_id)
  end
end
