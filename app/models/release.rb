class Release < ApplicationRecord
  has_many :release_recordings, dependent: :destroy
  has_many :release_acts, dependent: :destroy
  belongs_to :format
  belongs_to :record_deal
  belongs_to :territory
  # N:N with recordings, join table being release_recordings
  has_many :recordings, through: :release_recordings
  # N:N with acts, join table being release_acts
  has_many :acts, through: :release_acts

  has_one_attached :photo, dependent: :destroy

  validates :title, presence: true
  validates :release_date, presence: true
  validates :title, uniqueness: { scope: %i[release_date record_deal_id territory_id format_id] }

  include PgSearch::Model
  pg_search_scope :releases_search,
                  against: :title,
                  associated_against: {
                    acts: :name,
                    recordings: :title
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
