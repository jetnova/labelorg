class RecordDeal < ApplicationRecord
  has_many :releases, dependent: :destroy

  has_many :record_deal_recordings, dependent: :destroy

  has_many :recordings, through: :record_deal_recordings

  belongs_to :act
  belongs_to :record_label
end
