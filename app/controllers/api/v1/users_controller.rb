class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create 
    user = User.create(user_params)
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
    render json: user
    end
  end

  def destroy
    user = user.find(params[:id])
    user.destroy
    render json: 204
  end

  private
  def user_params
    params.require(:user).permit(:hairstyle, :date, :start, :duration, :status, :service_total)
  end
end
