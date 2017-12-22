class SubHeadersController < ApplicationController
  before_action :set_sub_header, only: [:show, :update, :destroy]

  def index
    @sub_headers = SubHeader.all
    render json: @sub_headers
  end

  def create
    # user = User.find_by(username: params[:username])
    # if user.authenticate(params[:passowrd])
    #   render json: {username:user.username, id: user.id}
    # else
    #   render json:{error: 'Invalid User hoe!'}, status: 401
    # end
    @sub_header = SubHeader.create(sub_header_params)
    render json: @sub_header

  end

  def show
    render json: @sub_header
  end

  def destroy
    @sub_header.destroy
    render json: SubHeader.all
  end

  private

  def set_sub_header
    @sub_header = SubHeader.find(params[:id])
  end

  def sub_header_params
    params.require(:sub_header).permit(:name)
  end

end
