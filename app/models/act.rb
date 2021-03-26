class Act < ApplicationRecord
  has_many :record_deals, dependent: :destroy
  has_many :release_acts, dependent: :destroy
  has_many :recording_acts, dependent: :destroy
  # has_many :act_musicians, dependent: :destroy

  # N:N relationships through the following join-tables
  has_many :recordings, through: :recording_acts
  has_many :releases, through: :release_acts
  has_many :record_labels, through: :record_deals

  has_one_attached :photo, dependent: :destroy

  validates :name, presence: true
end
