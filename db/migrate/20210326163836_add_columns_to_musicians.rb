class AddColumnsToMusicians < ActiveRecord::Migration[6.1]
  def change
    add_column :musicians, :dob, :date
    add_column :musicians, :cob, :string
    add_column :musicians, :nationality, :string
    add_column :musicians, :ipi, :string
    add_column :musicians, :cae, :string
    add_column :musicians, :isrc_stem, :string
  end
end
