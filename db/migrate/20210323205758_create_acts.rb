class CreateActs < ActiveRecord::Migration[6.1]
  def change
    create_table :acts do |t|
      t.string :name

      t.timestamps
    end
  end
end
