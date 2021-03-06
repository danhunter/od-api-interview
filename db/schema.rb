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

ActiveRecord::Schema.define(version: 2019_11_21_181256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "assignments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "clinician_id"
    t.bigint "consult_id"
    t.index ["clinician_id"], name: "index_assignments_on_clinician_id"
    t.index ["consult_id"], name: "index_assignments_on_consult_id"
  end

  create_table "clinicians", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.uuid "uuid"
    t.string "name"
    t.string "clinician_type"
    t.integer "rating"
    t.string "status"
    t.text "licenses", default: [], array: true
  end

  create_table "consult_rates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consults", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "consult_uuid"
    t.bigint "consult_rate_id"
    t.string "state"
    t.string "status"
  end

  create_table "enrollments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "clinician_id"
    t.bigint "consult_rate_id"
    t.index ["clinician_id"], name: "index_enrollments_on_clinician_id"
    t.index ["consult_rate_id"], name: "index_enrollments_on_consult_rate_id"
  end

end
