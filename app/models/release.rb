class Release < ApplicationRecord
  has_many :release_recordings
  belongs_to :format
  belongs_to :record_label
  belongs_to :territory
  # N:N with recordings, join table being release_recordings
  has_many :recordings, through: :release_recordings
  # N:N with acts, join table being release_acts
  has_many :acts, through: :release_acts

  has_one_attached :photo
end
