class Api::V1::NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    # byebug
    @note = Note.create(note_params)
    render json: @note

  end

  def show
    render json: @note
  end

  def destroy
    @note.destroy
    render json: Note.all
  end

  private

  def note_params
    params.permit(:user_id, :sub_header_id, :name, :subject_id, :bullet, :definition, :img, :code, :equation, :figure)
  end
  

end
