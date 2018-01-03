class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      render json: {username: user.username, id: user.id, token: issue_token({id: user.id})}
    else
      render({json: {error: 'User is invalid'}, status: 401})
    end
  end

  def show
    if current_user
      render json: {
        id: current_user.id,
        username: current_user.username
      }
    else
      render json: {error: 'Invalid token'}, status: 401
    end
  end
end
