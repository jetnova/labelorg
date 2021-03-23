class CreateTerritories < ActiveRecord::Migration[6.1]
  def change
    create_table :territories do |t|

      t.timestamps
    end
  end
end
