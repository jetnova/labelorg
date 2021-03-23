class Act < ApplicationRecord
  has_many :record_label_acts
  has_many :release_acts
  has_many :recording_acts
  has_many :act_musicians

  has_many :recordings, through: :recording_acts
  has_many :releases, through: :release_acts
  has_many :record_labels, through: :record_label_acts

  has_one_attached :photo
end
