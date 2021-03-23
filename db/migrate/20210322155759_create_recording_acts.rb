class CreateRecordingActs < ActiveRecord::Migration[6.1]
  def change
    create_table :recording_acts do |t|
      t.string :name
      t.references :recording, null: false, foreign_key: true

      t.timestamps
    end
  end
end
