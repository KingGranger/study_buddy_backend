class Api::V1::SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :update, :destroy]

  def index
    @subjects = Subject.all
    render json: @subjects
  end

  def create
    @subject = Subject.create(subject_params)
    render json: @subject

  end

  def show
    render json: @subject
  end

  def destroy
    @subject.destroy
    render json: Subject.all
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:name)
  end

end
