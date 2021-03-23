class RecordLabel < ApplicationRecord
  has_many :playlists
  has_many :users
  has_many :releases
  has_many :record_label_acts

  has_many :territories, through: :releases
  has_many :formats, through: :releases
  has_many :acts, through: :record_label_acts
end
