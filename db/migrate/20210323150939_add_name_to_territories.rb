class AddNameToTerritories < ActiveRecord::Migration[6.1]
  def change
    add_column :territories, :name, :string
  end
end
