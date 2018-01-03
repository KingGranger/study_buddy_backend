class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]


  def index
    @Users = User.all
    render json: @Users
  end


  def create
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
    params.permit(:username, :first_name, :last_name, :password)
  end

end
