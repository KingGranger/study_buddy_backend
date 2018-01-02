class Api::V1::TypesController < ApplicationController
  before_action :set_type, only: [:show, :update, :destroy]

  def index
    @types = Type.all
    render json: @types
  end

  def create
    @type = Type.create(type_params)
    render json: @type

  end

  def show
    render json: @type
  end

  def destroy
    @type.destroy
    render json: Type.all
  end

  private

  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:name)
  end
end
