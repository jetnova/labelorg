class CreateReleases < ActiveRecord::Migration[6.1]
  def change
    create_table :releases do |t|
      t.string :title
      t.string :album_artist
      t.date :release_date
      t.string :format

      t.timestamps
    end
  end
end
