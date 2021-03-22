class RecordingAct < ApplicationRecord
  belongs_to :recording
  has_many :recording_performers

  # N:N with musicians, join table being recording_performers
  has_many :musicians, through: :recording_performers

  validates :name, presence: true
end
