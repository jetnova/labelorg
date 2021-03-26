class CreateRecordDealRecordings < ActiveRecord::Migration[6.1]
  def change
    create_table :record_deal_recordings do |t|

      t.timestamps
    end

    add_reference :record_deal_recordings, :record_deal, foreign_key: true
    add_reference :record_deal_recordings, :recording, foreign_key: true
  end
end
