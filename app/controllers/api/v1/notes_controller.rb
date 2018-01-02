class Api::V1::NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
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

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content)
  end

end
