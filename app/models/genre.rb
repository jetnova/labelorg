class Genre < ApplicationRecord
  has_many :recordings

  validates :name, presence: true
  validates :name, uniqueness: true
end
