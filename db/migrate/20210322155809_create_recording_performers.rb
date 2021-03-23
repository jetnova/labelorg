class CreateRecordingPerformers < ActiveRecord::Migration[6.1]
  def change
    create_table :recording_performers do |t|
      t.references :musician, null: false, foreign_key: true
      t.references :recording, null: false, foreign_key: true
      t.references :recording_act, null: false, foreign_key: true
      t.float      :split

      t.timestamps
    end
  end
end
