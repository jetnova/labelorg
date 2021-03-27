class ReleasesController < ApplicationController
  def index
    if params[:query].present?
      @releases = policy_scope(Release).releases_search(params[:query]).order(release_date: :desc)
    else
      skip_policy_scope
    end
  end

  def new
    @release = Release.new
    authorize @release
    # @record_deals = policy_scope(RecordDeal)
    # @release_recording = ReleaseRecording.new
    # authorize @release_recording
    @territories = Territory.all
    @formats = Format.all
  end

  def show
    @release = Release.find(params[:id])
    authorize @release
  end
end
