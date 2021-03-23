class AddTerritoryToReleases < ActiveRecord::Migration[6.1]
  def change
    add_reference :releases, :territory, foreign_key: true
  end
end
