class RecordingPerformer < ApplicationRecord
  # Join table for N:N relationships between recordings/musicians/recording_acts
  belongs_to :recording
  belongs_to :musician
  belongs_to :recording_act
end
