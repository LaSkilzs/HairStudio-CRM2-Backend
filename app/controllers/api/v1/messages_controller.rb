class Api::V1::MessagesController < ApplicationController
  def index
    @messages =Message.all
    render json: @messages
  end

  def create 
    message = Message.create(message_params)
    if message.save
      render json: message
    else
      render json: {errors: message.errors.full_messages}
    end
  end

  def show
    message = Message.find(params[:id])
    render json: message
  end

  def update
    message = Message.find(params[:id])
    if message.update(message_params)
    render json: message
    end
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
    render json: 204
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :phone, :message, :salon_id)
  end
end
