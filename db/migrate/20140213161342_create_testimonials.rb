class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :quote
      t.references :image, index: true
      t.references :event, index: true
    end
  end
end
