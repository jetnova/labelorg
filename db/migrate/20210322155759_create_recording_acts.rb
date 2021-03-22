class CreateRecordingActs < ActiveRecord::Migration[6.1]
  def change
    create_table :recording_acts do |t|

      t.timestamps
    end
  end
end
