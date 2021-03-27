class SongsController < ApplicationController
  def index
    @songs = policy_scope(Song)
  end

  def new
    @song = Song.new
    authorize @song
    @musicians = policy_scope(Musician)
    @song_composer = SongComposer.new
  end

  def create
  end

  def update
  end
end
