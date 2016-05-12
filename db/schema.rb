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

ActiveRecord::Schema.define(version: 20160505232006) do

  create_table "check_ins", force: :cascade do |t|
    t.string   "device_id"
    t.string   "monitoring_version"
    t.string   "os_version"
    t.string   "primary_status"
    t.string   "cell_status"
    t.datetime "check_in_time"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", force: :cascade do |t|
    t.string   "serial_number"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
