class DeleteNameFromRecordingActs < ActiveRecord::Migration[6.1]
  def change
    remove_column :recording_acts, :name
    add_reference :recording_acts, :act, foreign_key: true
  end
end
