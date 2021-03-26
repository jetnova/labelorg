class AddReleaseTypesReferenceToReleases < ActiveRecord::Migration[6.1]
  def change
    add_reference :releases, :release_type, foreign_key: true
  end
end
