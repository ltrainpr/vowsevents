class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :vendor_name
      t.string :vendor_url
      t.string :vendor_type
    end
  end
end
