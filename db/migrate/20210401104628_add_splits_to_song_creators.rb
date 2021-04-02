class AddSplitsToSongCreators < ActiveRecord::Migration[6.1]
  def change
    rename_column :song_creators, :split, :perf_share
    add_column :song_creators, :mech_share, :float
  end
end
