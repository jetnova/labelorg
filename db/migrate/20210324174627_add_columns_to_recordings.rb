class AddColumnsToRecordings < ActiveRecord::Migration[6.1]
  def change
    add_column :recordings, :isrc, :string
    add_column :recordings, :bpm, :integer
  end
end
