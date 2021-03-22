class CreateRecordingProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :recording_producers do |t|

      t.timestamps
    end
  end
end
