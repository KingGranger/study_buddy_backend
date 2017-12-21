class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    # user = User.find_by(username: params[:username])
    # if user.authenticate(params[:passowrd])
    #   render json: {username:user.username, id: user.id}
    # else
    #   render json:{error: 'Invalid User hoe!'}, status: 401
    # end
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
    params.require(:note).permit(:username, :first_name, :last_name, :password_digest)
  end

end
