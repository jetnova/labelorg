class Playlist < ApplicationRecord
  has_many :playlist_recordings, dependent: :destroy

  # N:N with recordings, join table being playlist_recordings
  has_many :recordings, through: :playlist_recordings

  has_one_attached :photo, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: { scope: :record_label_id,
                                  message: 'Each label\'s playlists require a unique name' }
end
