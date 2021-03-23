class CreateRecordings < ActiveRecord::Migration[6.1]
  def change
    create_table :recordings do |t|
      t.references :song, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
