class CreateReleaseRecordings < ActiveRecord::Migration[6.1]
  def change
    create_table :release_recordings do |t|
      t.references :release, null: false, foreign_key: true
      t.references :recording, null: false, foreign_key: true

      t.timestamps
    end
  end
end
