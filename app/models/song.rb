class Song < ApplicationRecord
  has_many :song_composers, dependent: :destroy
  has_many :recordings, dependent: :destroy

  # N:N with musicians, join table being song_composers
  has_many :musicians, through: :song_composers

  validates :title, presence: true

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
