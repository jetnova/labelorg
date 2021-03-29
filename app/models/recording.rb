class Recording < ApplicationRecord
  belongs_to :song
  belongs_to :genre

  has_many :recording_producers, dependent: :destroy
  has_many :recording_acts, dependent: :destroy
  has_many :recording_performers, dependent: :destroy
  has_many :playlist_recordings, dependent: :destroy
  has_many :release_recordings, dependent: :destroy
  has_many :record_deal_recordings, dependent: :destroy

  # N:N with musicians, join tables being recording_producers & recording_performers
  has_many :musicians, through: :recording_producers
  has_many :musicians, through: :recording_performers
  # N:N with acts, join table being recording_acts
  has_many :acts, through: :recording_acts
  # N:N with record_deals, join table being record_deal_recordings
  has_many :record_deals, through: :record_deal_recordings

  has_one_attached :audio_file

  validates :title, presence: true

  include PgSearch::Model
  pg_search_scope :recordings_search,
                  against: :title,
                  associated_against: {
                    acts: :name
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
