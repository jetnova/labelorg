class AddLyricsToRecordings < ActiveRecord::Migration[6.1]
  def change
    add_column :recordings, :lyrics, :text
  end
end
