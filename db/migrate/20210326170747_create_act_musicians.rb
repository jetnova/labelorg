class CreateActMusicians < ActiveRecord::Migration[6.1]
def change
    create_table :act_musicians do |t|
      t.boolean :current, default: true

      t.timestamps
    end

    add_reference :act_musicians, :musician, foreign_key: true
    add_reference :act_musicians, :act, foreign_key: true
  end
end
