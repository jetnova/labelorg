class PlaylistsController < ApplicationController
  def index
    @playlists = policy_scope(Playlist).order(created_at: :desc)
  end

  def show
    @playlist = Playlist.find(params[:id])
    authorize @playlist
  end
end
