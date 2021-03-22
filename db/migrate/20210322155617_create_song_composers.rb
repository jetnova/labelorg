class CreateSongComposers < ActiveRecord::Migration[6.1]
  def change
    create_table :song_composers do |t|

      t.timestamps
    end
  end
end
