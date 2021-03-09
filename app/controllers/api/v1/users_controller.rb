class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: user, status: 200
    else
      response = {
        error: user.errors.full_messages.to_sentence
      }
      render json: response, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end
