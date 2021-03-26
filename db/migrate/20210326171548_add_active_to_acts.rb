class AddActiveToActs < ActiveRecord::Migration[6.1]
  def change
    add_column :acts, :active, :boolean
  end
end
