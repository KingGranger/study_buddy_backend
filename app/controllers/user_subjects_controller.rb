class UserSubjectsController < ApplicationController
  def index
    @sub_headers = SubHeader.all
    render json: @sub_headers
  end
end
