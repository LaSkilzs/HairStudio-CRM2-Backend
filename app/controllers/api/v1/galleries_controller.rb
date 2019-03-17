class Api::V1::GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
    render json: @galleries
  end

  def create 
    gallery = Gallery.create(gallery_params)
    if gallery.save
      render json: gallery
    else
      render json: {errors: gallery.errors.full_messages}
    end
  end

  def show
    gallery = Gallery.find(params[:id])
    render json: gallery
  end

  def update
    gallery = Gallery.find(params[:id])
    if gallery.update(gallery_params)
    render json: gallery
    end
  end

  def destroy
    gallery = Gallery.find(params[:id])
    gallery.destroy
    render json: 204
  end

  private
  def gallery_params
    params.require(:gallery).permit(:image, :gallery_category_id, :gallerable_id, :gallerable_type)
  end
end
