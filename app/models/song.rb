class Song < ApplicationRecord
  has_many :song_creators, dependent: :destroy
  has_many :recordings

  # N:N with musicians, join table being song_composers
  has_many :musicians, through: :song_creators

  def song_creators_attributes=(song_creators_attributes)
    song_creators_attributes.each do |_, song_creator_attributes|
      self.song_creators.build(song_creator_attributes)
    end
  end

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
