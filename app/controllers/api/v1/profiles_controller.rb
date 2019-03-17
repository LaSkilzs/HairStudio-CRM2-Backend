class Api::V1::ProfilesController < ApplicationController
   def index
    @profiles = Profile.all
    render json: @profiles
  end

  def create 
    profile = Profile.create(profile_params)
    if profile.save
      render json: profile
    else
      render json: {errors: profile.errors.full_messages}
    end
  end

  def show
    profile = Profile.find(params[:id])
    render json: profile
  end

  def update
    profile = Profile.find(params[:id])
    if profile.update(profile_params)
    render json: profile
    end
  end

  def destroy
    profile = Profile.find(params[:id])
    profile.destroy
    render json: 204
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :birthday, :email, :home, :mobile, :street_1, :street_2, :city, :state, :zip, :user_id)
  end
end
