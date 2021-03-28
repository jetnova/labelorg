class SongCreator < ApplicationRecord
  # Join table for N:N relationships between songs & musicians
  belongs_to :song
  belongs_to :musician

  validates :song, uniqueness: { scope: :musician }
end
