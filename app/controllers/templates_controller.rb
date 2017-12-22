class TemplatesController < ApplicationController
  before_action :set_template, only: [:show, :update, :destroy]

  def index
    @Templates = Template.all
    render json: @Templates
  end

  def create
    @template = Template.create(template_params)
    render json: @template

  end

  def show
    render json: @template
  end

  def destroy
    @template.destroy
    render json: Template.all
  end

  private

  def set_template
    @template = Template.find(params[:id])
  end

  def template_params
    params.require(:template).permit(:name)
  end
end
