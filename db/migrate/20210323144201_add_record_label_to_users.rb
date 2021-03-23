class AddRecordLabelToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :record_label, foreign_key: true
  end
end
