class Format < ApplicationRecord
  has_many :releases

  validates :description, presence: true
  validates :description, uniqueness: true
end
