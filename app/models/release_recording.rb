class ReleaseRecording < ApplicationRecord
  # Join table for N:N relationships between recordings & releases
  belongs_to :release
  belongs_to :recording

  validates :track_number, uniqueness: { scope: :release_id }

  include PgSearch::Model
  pg_search_scope :recordings_search,
                  associated_against: {
                    recording: :title,
                    release: :title
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
