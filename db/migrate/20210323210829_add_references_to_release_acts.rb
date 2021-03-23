class AddReferencesToReleaseActs < ActiveRecord::Migration[6.1]
  def change
    add_reference :release_acts, :act, foreign_key: true
    add_reference :release_acts, :release, foreign_key: true
  end
end
