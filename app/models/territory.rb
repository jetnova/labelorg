class Territory < ApplicationRecord
  has_many :releases

  validates :name, presence: true
  validates :name, uniqueness: true
end
