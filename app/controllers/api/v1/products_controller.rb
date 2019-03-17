class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def create 
    product = Product.create(product_params)
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}
    end
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
    render json: product
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: 204
  end

  private
  def product_params
    params.require(:product).permit(:name, :size, :quantity, :cost, :product_category)
  end
end
