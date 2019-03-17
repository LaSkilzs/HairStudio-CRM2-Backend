require 'byebug'

class Api::V1::AuthController < ApplicationController


  def login
    user = User.find_by(username: params["username"])
    if user && user.authenticate(params["password"])
      payload = {user_id: user.id}
      token = JWT.encode(payload, ENV["SECRET"])
      puts user
      render json: {user: UserSerializer.new(user), jwt: token}
    end
  end
  
  def profile
    auth_header = request.headers['Authorization']
    token = auth_header.split(" ")[1]
    decoded_token = JWT.decode(token, ENV['SECRET'], true, {algorithm: 'HS256'})
    user_id = decoded_token[0]['user_id']
    user = User.find(user_id)
      if user.valid?
        render json: {user: UserSerializer.new(user)}
      else
        render json: {errors: user.errors.full_messages}
      end  
  end
end