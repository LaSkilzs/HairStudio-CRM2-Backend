class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create 
    user = User.create(user_params)
    payload = {user_id: user.id}
    token = JWT.encode(payload, ENV['SECRET'])
    if user.save
      render json: {user: user, jwt: token}
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
    params.permit(:username, :password, :role, :salon_id, :image)
  end
end
