class RecordingsController < ApplicationController
  def index
    if params[:query].present?
      @recordings = policy_scope(Recording).recordings_search(params[:query])
    else
      skip_policy_scope
    end
  end

  def show
    @recording = Recording.find(params[:id])
    authorize @recording
  end

  def new
    @recording = Recording.new
    authorize @recording
    @acts = policy_scope(Act)
    @songs = policy_scope(Song)
    @genres = policy_scope(Genre)
  end

  def create
    raise
  end

  def update
    @recording = Recording.find(params[:id])
    authorize @recording
    if @recording.update(title: params[:recording][:title])
      redirect_to record_label_recording_path(current_user.record_label, @recording), notice: "Recording Information Updated"
    else
      render :show
    end
  end

  private

  def recording_params
    params.require(:recording).permit(:title, :isrc, :lyrics, :au)
  end
end
