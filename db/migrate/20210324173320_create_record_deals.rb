class CreateRecordDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :record_deals do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end

    add_reference :record_deals, :record_label, foreign_key: true
    add_reference :record_deals, :act, foreign_key: true
  end
end
