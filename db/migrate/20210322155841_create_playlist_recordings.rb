class CreatePlaylistRecordings < ActiveRecord::Migration[6.1]
  def change
    create_table :playlist_recordings do |t|
      t.references :playlist, null: false, foreign_key: true
      t.references :recording, null: false, foreign_key: true

      t.timestamps
    end
  end
end
