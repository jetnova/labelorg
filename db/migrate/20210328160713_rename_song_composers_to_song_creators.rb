class RenameSongComposersToSongCreators < ActiveRecord::Migration[6.1]
  def change
    rename_table :song_composers, :song_creators
  end
end
