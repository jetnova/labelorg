class Release < ApplicationRecord
  has_many :release_recordings

  # N:N with recordings, join table being release_recordings
  has_many :recordings, through: :release_recordings
end
