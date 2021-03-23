class Recording < ApplicationRecord
  belongs_to :song
  belongs_to :genre

  has_many :recording_producers, dependent: :destroy
  has_many :recording_acts, dependent: :destroy
  has_many :recording_performers, dependent: :destroy
  has_many :playlist_recordings, dependent: :destroy
  has_many :release_recordings, dependent: :destroy

  # N:N with musicians, join tables being recording_producers & recording_performers
  has_many :musicians, through: :recording_producers
  has_many :musicians, through: :recording_performers
  # N:N with acts, join table being recording_acts
  has_many :acts, through: :recording_acts
end
