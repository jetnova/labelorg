class SongComposer < ApplicationRecord
  # Join table for N:N relationships between songs & musicians
  belongs_to :song
  belongs_to :musician
end
