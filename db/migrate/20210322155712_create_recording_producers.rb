class CreateRecordingProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :recording_producers do |t|
      t.references :musician, null: false, foreign_key: true
      t.references :recording, null: false, foreign_key: true

      t.timestamps
    end
  end
end
