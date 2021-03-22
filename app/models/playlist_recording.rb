class PlaylistRecording < ApplicationRecord
  # Join table for N:N relationships between recordings & playlists
  belongs_to :playlist
  belongs_to :recording
end
