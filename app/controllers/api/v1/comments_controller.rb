class Api::V1::CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments
  end

  def create 
    comment = Comment.create(comment_params)
    if comment.save
      render json: comment
    else
      render json: {errors: comment.errors.full_messages}
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: 204
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :user_id, :post_id)
  end
end
