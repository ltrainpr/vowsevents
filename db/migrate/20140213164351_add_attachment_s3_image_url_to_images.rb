class AddAttachmentS3ImageUrlToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :s3_image_url
      remove_column :images, :image_url, :string 
    end
  end

  def self.down
    drop_attached_file :images, :s3_image_url
    add_column :image_url, :string
  end
end
