class SongsController < ApplicationController
  def index
    @songs = policy_scope(Song)
  end

  def new
    @song = Song.new
    authorize @song
    @musicians = policy_scope(Musician)
    @song.song_creators.build
  end

  def create
    raise
    @song = Song.new(song_params)
    authorize @song
    if @song.save!
      redirect_to songs_path, notice: 'Song Record Created'
    else
      render :new
    end
  end

  def update
  end

  private

  def song_params
    params.require(:song).permit(:title, :iswc, song_creators_attributes: %i[musician_id perf_share mech_share])
  end
end
