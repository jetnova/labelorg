class ReleasesController < ApplicationController
  def index
    @releases = policy_scope(Release).order(release_date: :desc)
  end

  def show
    @release = Release.find(params[:id])
    authorize @release
  end
end
