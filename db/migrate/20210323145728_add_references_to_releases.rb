class AddReferencesToReleases < ActiveRecord::Migration[6.1]
  def change
    remove_column :releases, :format
    add_reference :releases, :format, foreign_key: true
  end
end
