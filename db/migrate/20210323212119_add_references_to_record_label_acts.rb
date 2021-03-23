class AddReferencesToRecordLabelActs < ActiveRecord::Migration[6.1]
  def change
    add_reference :record_label_acts, :record_label, foreign_key: true
    add_reference :record_label_acts, :act, foreign_key: true
  end
end
