class RecordingProducer < ApplicationRecord
  # Join table for N:N relationships between recordings & musicians
  belongs_to :recording
  belongs_to :musician
end
