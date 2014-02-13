class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.references :event, index: true
      t.references :testimonial, index: true
    end
  end
end
