class AddEventIdToVendors < ActiveRecord::Migration
  def change
    add_reference :vendors, :event, index: true
    remove_column :events, :vendor_name
    remove_column :events, :vendor_url
    remove_column :events, :vendor_type
  end
end
