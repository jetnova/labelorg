class AddRecordLabelToReleases < ActiveRecord::Migration[6.1]
  def change
    add_reference :releases, :record_label, foreign_key: true
  end
end
