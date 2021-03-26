class ActMusician < ApplicationRecord
  belongs_to :musician
  belongs_to :act
end
