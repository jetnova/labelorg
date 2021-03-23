class RemoveRecordingActFromRecordingPerformers < ActiveRecord::Migration[6.1]
  def change
    remove_column :recording_performers, :recording_act_id, :bigint
  end
end
