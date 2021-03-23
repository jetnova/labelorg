class CreateRecordLabelActs < ActiveRecord::Migration[6.1]
  def change
    create_table :record_label_acts do |t|

      t.timestamps
    end
  end
end
