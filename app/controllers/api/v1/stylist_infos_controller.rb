class Api::V1::StylistInfosController < ApplicationController
  def index
    @stylist_infos = StylistInfo.all
    render json: @stylist_infos
  end

  def create 
    stylist_info = StylistInfo.create(stylist_info_params)
    if stylist_info.save
      render json: stylist_info
    else
      render json: {errors: stylist_info.errors.full_messages}
    end
  end

  def show
    stylist_info = StylistInfo.find(params[:id])
    render json: stylist_info
  end

  def update
    stylist_info = StylistInfo.find(params[:id])
    if stylist_info.update(stylist_info_params)
    render json: stylist_info
    end
  end

  def destroy
    stylist_info = stylist_info.find(params[:id])
    stylist_info.destroy
    render json: 204
  end

  private
  def stylist_info_params
    params.require(:stylist_info).permit(:hairstyle, :date, :start, :duration, :status, :service_total)
  end
end
