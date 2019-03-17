class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def create 
    post = Post.create(post_params)
    if post.save
      render json: post
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  def show
    post = Post.find(params[:id])
    render json: post
  end


  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: 204
  end

  private
  def post_params
    params.require(:post).permit(:name)
  end
end
