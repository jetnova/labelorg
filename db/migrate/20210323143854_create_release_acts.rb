class CreateReleaseActs < ActiveRecord::Migration[6.1]
  def change
    create_table :release_acts do |t|

      t.timestamps
    end
  end
end
