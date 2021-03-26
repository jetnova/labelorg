class RecordLabel < ApplicationRecord
  has_many :playlists, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :record_deals, dependent: :destroy

  has_many :acts, through: :record_deals

  validates :name, presence: true
  validates :name, uniqueness: true
end
