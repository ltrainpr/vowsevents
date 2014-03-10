class RenameTableEventsVendors < ActiveRecord::Migration
  def change
  	rename_table :events_vendors, :event_vendors
  end
end
