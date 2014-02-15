ActiveRecord::Schema.define(version: 20140213164351) do

  create_table "events", force: true do |t|
    t.string "name"
    t.date   "date"
    t.string "vendor_name"
    t.string "vendor_url"
    t.string "vendor_type"
  end

  create_table "images", force: true do |t|
    t.integer  "event_id"
    t.integer  "testimonial_id"
    t.string   "s3_image_url_file_name"
    t.string   "s3_image_url_content_type"
    t.integer  "s3_image_url_file_size"
    t.datetime "s3_image_url_updated_at"
  end

  add_index "images", ["event_id"], name: "index_images_on_event_id"
  add_index "images", ["testimonial_id"], name: "index_images_on_testimonial_id"

  create_table "testimonials", force: true do |t|
    t.string  "quote"
    t.integer "image_id"
    t.integer "event_id"
  end

  add_index "testimonials", ["event_id"], name: "index_testimonials_on_event_id"
  add_index "testimonials", ["image_id"], name: "index_testimonials_on_image_id"

end
