class ReleaseRecording < ApplicationRecord
  # Join table for N:N relationships between recordings & releases
  belongs_to :release
  belongs_to :recording
end
