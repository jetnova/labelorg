class RemoveRecordLabelIdFromReleases < ActiveRecord::Migration[6.1]
  def change
    remove_column :releases, :record_label_id
    add_reference :releases, :record_deal, foreign_key: true
  end
end
