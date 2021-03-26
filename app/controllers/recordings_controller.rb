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
  end
end
