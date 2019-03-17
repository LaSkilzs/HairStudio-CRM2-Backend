class Api::V1::ProductCategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.all
    render json: @product_categories
  end

  def create 
    product_category = ProductCategory.create(product_category_params)
    if product_category.save
      render json: product_category
    else
      render json: {errors: product_category.errors.full_messages}
    end
  end



  def destroy
    product_category = ProductCategory.find(params[:id])
    product_category.destroy
    render json: 204
  end

  private
  def product_category_params
    params.require(:product_category).permit(:name)
  end
end
