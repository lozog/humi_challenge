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

ActiveRecord::Schema.define(version: 2018_08_01_000028) do

  create_table "royce_connector", force: :cascade do |t|
    t.string "roleable_type", null: false
    t.integer "roleable_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_royce_connector_on_role_id"
    t.index ["roleable_id", "roleable_type"], name: "index_royce_connector_on_roleable_id_and_roleable_type"
    t.index ["roleable_type", "roleable_id"], name: "index_royce_connector_on_roleable_type_and_roleable_id"
  end

  create_table "royce_role", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_royce_role_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.boolean "marital_status"
    t.string "sin"
    t.datetime "hire_date"
    t.string "prefs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
