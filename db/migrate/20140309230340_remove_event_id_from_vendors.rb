class RemoveEventIdFromVendors < ActiveRecord::Migration
  def change
    remove_column :vendors, :event_id, :integer
  end
end
