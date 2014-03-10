# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140310183341) do

  create_table "event_vendors", id: false, force: true do |t|
    t.integer  "event_id",   null: false
    t.integer  "vendor_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_vendors", ["event_id", "vendor_id"], name: "index_event_vendors_on_event_id_and_vendor_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "event_id"
    t.integer  "testimonial_id"
    t.string   "s3_image_url_file_name"
    t.string   "s3_image_url_content_type"
    t.integer  "s3_image_url_file_size"
    t.datetime "s3_image_url_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["event_id"], name: "index_images_on_event_id"
  add_index "images", ["testimonial_id"], name: "index_images_on_testimonial_id"

  create_table "testimonials", force: true do |t|
    t.string   "quote"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonials", ["event_id"], name: "index_testimonials_on_event_id"

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "vendor_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
