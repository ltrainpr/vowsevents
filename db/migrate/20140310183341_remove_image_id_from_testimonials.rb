class RemoveImageIdFromTestimonials < ActiveRecord::Migration
  def change
    remove_column :testimonials, :image_id, :integer
  end
end
