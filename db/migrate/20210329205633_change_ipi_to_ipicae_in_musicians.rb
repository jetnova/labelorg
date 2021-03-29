class ChangeIpiToIpicaeInMusicians < ActiveRecord::Migration[6.1]
  def change
    remove_column :musicians, :cae, :string
    rename_column :musicians, :ipi, :ipicae
    add_column :musicians, :dod, :date
  end
end
