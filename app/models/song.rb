class Song < ApplicationRecord
  has_many :song_composers, dependent: :destroy
  has_many :recordings

  # N:N with musicians, join table being song_composers
  has_many :musicians, through: :song_composers

  validates :title, presence: true
end
