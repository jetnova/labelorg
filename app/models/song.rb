class Song < ApplicationRecord
  has_many :song_creators, dependent: :destroy
  has_many :recordings, dependent: :destroy

  # N:N with musicians, join table being song_composers
  has_many :musicians, through: :song_creators

  validates :title, presence: true

  include PgSearch::Model
  pg_search_scope :songs_search,
                  against: %i[title iswc],
                  # associated_against: {
                  #   acts: :name,
                  #   recordings: :title
                  # },
                  using: {
                    tsearch: { prefix: true }
                  }
end
