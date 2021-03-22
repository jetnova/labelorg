class Playlist < ApplicationRecord
  has_many :playlist_recordings

  # N:N with recordings, join table being playlist_recordings
  has_many :recordings, through: :playlist_recordings
end
