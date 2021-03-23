class ReleaseAct < ApplicationRecord
  # Join table for N:N relationships between recording_acts & releases
  belongs_to :act
  belongs_to :release
end
