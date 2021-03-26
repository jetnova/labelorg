class Musician < ApplicationRecord
  has_many :recording_performers, dependent: :destroy
  has_many :recording_producers, dependent: :destroy
  has_many :song_composers, dependent: :destroy

  # N:N with songs, join table being song_composers
  has_many :songs, through: :song_composers
  # N:N with recordings, join tables being recording_producers & recording_performers
  has_many :recordings, through: :recording_producers
  has_many :recordings, through: :recording_performers
  # N:N with recording_acts, join table being recording_performers
  has_many :recording_acts, through: :recording_performers

  validates :name, presence: true

  include PgSearch::Model
  pg_search_scope :musicians_search,
                  against: :name,
                  # associated_against: {
                  #   acts: :name,
                  #   recordings: :title
                  # },
                  using: {
                    tsearch: { prefix: true }
                  }
end
