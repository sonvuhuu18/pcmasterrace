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

ActiveRecord::Schema.define(version: 20171016060352) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cpus", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "manufacturer_id"
    t.float    "clock_speed"
    t.float    "turbo_clock_speed"
    t.string   "cores"
    t.string   "is_unlocked"
    t.string   "architechture"
    t.integer  "threads"
    t.float    "l2_cache"
    t.float    "l3_cache"
    t.integer  "manufacturer_process"
    t.string   "gpu_label"
    t.float    "tdp"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "images"
  end

  create_table "gpus", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "manufacturer_id"
    t.string   "gpu_brand"
    t.string   "gpu_name"
    t.float    "clock_speed"
    t.float    "turbo_clock_speed"
    t.integer  "is_dual_gpu"
    t.float    "memory_clock_speed"
    t.float    "effective_memory_clock_speed"
    t.float    "memory_bus"
    t.float    "memory"
    t.string   "memory_type"
    t.float    "memory_bandwidth"
    t.float    "tdp"
    t.float    "shading_units"
    t.float    "texture_mapping_units"
    t.float    "render_output_precessors"
    t.float    "pixel_rate"
    t.float    "texture_rate"
    t.float    "floating_point_performance"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "images"
  end

  create_table "hard_drives", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "manufacturer_id"
    t.float    "capacity"
    t.float    "cache"
    t.float    "interface"
    t.float    "interface_speed"
    t.string   "controller"
    t.string   "memory_type"
    t.float    "process_size"
    t.float    "max_shock_force"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "images"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.float    "ranking"
    t.date     "release_date"
    t.integer  "category_id"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "store"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "item_id"
    t.integer  "user_id"
    t.integer  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
