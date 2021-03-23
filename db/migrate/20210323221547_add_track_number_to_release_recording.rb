class AddTrackNumberToReleaseRecording < ActiveRecord::Migration[6.1]
  def change
    add_column :release_recordings, :track_number, :integer
  end
end
