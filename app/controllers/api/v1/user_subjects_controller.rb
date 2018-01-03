class Api::V1::UserSubjectsController < ApplicationController
  def index
    @user_subjects = UserSubject.all
    render json: @user_subjects
  end

  def create
    @user_subjects = UserSubject.create(user_subjects_params)
    render json: @user_subjects

  end

  def show
    render json: @user_subjects
  end

  def destroy
    @user_subjects.destroy
    render json: UserSubject.all
  end
end
