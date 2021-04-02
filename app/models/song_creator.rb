class SongCreator < ApplicationRecord
  # Join table for N:N relationships between songs & musicians
  belongs_to :song
  belongs_to :musician

  validates :song, uniqueness: { scope: :musician }
  validates :perf_share, numericality: { in: 0.00..100.00 }
  validates :mech_share, numericality: { in: 0.00..100.00 }
end
