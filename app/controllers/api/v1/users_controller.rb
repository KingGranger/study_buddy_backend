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
<<<<<<< HEAD:app/controllers/users_controller.rb
    params.require(:user).permit(:username, :first_name, :last_name, :password_digest)
=======
    params.permit(:username, :first_name, :last_name, :password)
>>>>>>> ff5e51c1f78f83939dd5401dac77340579189985:app/controllers/api/v1/users_controller.rb
  end

end
