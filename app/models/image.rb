class Image < ActiveRecord::Base
	belongs_to :event
	belongs_to :testimonial

	has_attached_file :s3_image_url, styles: {medium: '300x300>'}, :storage => :s3, :url => ":s3_domain_url"
	validates_attachment_content_type :s3_image_url, :content_type => /\Aimage\/.*\Z/
end