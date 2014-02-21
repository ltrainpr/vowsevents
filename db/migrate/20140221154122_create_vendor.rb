class CreateVendor < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :url
      t.string :vendor_type

      t.timestamps
    end
  end
end
