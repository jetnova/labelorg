class CreateSongComposers < ActiveRecord::Migration[6.1]
  def change
    create_table :song_composers do |t|
      t.references :musician, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.float :split

      t.timestamps
    end
  end
end
