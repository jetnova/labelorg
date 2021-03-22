class CreateReleaseRecordings < ActiveRecord::Migration[6.1]
  def change
    create_table :release_recordings do |t|

      t.timestamps
    end
  end
end
