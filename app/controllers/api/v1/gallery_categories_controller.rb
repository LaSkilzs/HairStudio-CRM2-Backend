class Api::V1::GalleryCategoriesController < ApplicationController
  
  def index
    @gallery_category = GalleryCategory.all
    render json: @gallery_category
  end

  def create 
    gallery_category = GalleryCategory.create(gallery_category_params)
    if gallery_category.save
      render json: gallery_category
    else
      render json: {errors: gallery_category.errors.full_messages}
    end
  end

  def show
    gallery_category = GalleryCategory.find(params[:id])
    render json: gallery_category
  end

  def destroy
    gallery_category = GalleryCategory.find(params[:id])
    gallery_category.destroy
    render json: 204
  end

  private
  def gallery_category_params
    params.require(:gallery_category).permit(:name)
  end
end
