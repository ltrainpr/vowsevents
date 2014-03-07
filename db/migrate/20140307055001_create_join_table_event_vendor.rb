class CreateJoinTableEventVendor < ActiveRecord::Migration
  def change
    create_join_table :events, :vendors do |t|
      t.index [:event_id, :vendor_id]

      t.timestamps
    end
  end
end
