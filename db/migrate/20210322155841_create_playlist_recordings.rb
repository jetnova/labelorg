class CreatePlaylistRecordings < ActiveRecord::Migration[6.1]
  def change
    create_table :playlist_recordings do |t|

      t.timestamps
    end
  end
end
