class SongsController < ApplicationController
  def index
    @songs = policy_scope(Song)
  end

  def new
    @song = Song.new
    authorize @song
    @musicians = policy_scope(Musician)
  end

  def create
    @song = Song.new(title: params[:song][:title], iswc: params[:song][:iswc])
    authorize @song
    params[:song][:musician_ids].each do |id|
      SongCreator.create(song_id: @song, musician_id: id)
    end
    if @song.save
      redirect_to songs_path, notice: "Song Record Created"
    else
      render :new
    end
  end

  def update
  end

  private

  def song_params

  end
end
