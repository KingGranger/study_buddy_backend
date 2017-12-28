class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]


  def index
    @Users = User.all
    render json: @Users
  end

  def create
    # user = User.find_by(username: params[:username])
    # if user.authenticate(params[:passowrd])
    #   render json: {username:user.username, id: user.id}
    # else
    #   render json:{error: 'Invalid User hoe!'}, status: 401
    # end
    # byebug
    @user = User.create(user_params)
    render json: @user

  end

  def show
    render json: @user
  end

  def destroy
    @user.destroy
    render json: User.all
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user, :first_name, :last_name, :password_digest)
  end

end
