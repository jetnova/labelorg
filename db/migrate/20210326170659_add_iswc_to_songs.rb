class AddIswcToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :iswc, :string
  end
end
