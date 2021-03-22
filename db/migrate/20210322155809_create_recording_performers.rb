class CreateRecordingPerformers < ActiveRecord::Migration[6.1]
  def change
    create_table :recording_performers do |t|

      t.timestamps
    end
  end
end
