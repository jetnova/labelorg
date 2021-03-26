class AddIsrcStemToRecordLabels < ActiveRecord::Migration[6.1]
  def change
    add_column :record_labels, :isrc_stem, :string
  end
end
