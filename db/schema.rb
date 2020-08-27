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

ActiveRecord::Schema.define(version: 2020_08_19_134009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "confirmeds", force: :cascade do |t|
    t.integer "index"
    t.string "dateConfirmed"
    t.boolean "routeIdentified"
    t.integer "si_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dongs", force: :cascade do |t|
    t.string "name"
    t.integer "today"
    t.integer "thisWeek"
    t.integer "lastWeek"
    t.integer "accumulated"
    t.integer "gu_id"
    t.integer "si_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gus", force: :cascade do |t|
    t.string "name"
    t.integer "today"
    t.integer "thisWeek"
    t.integer "lastWeek"
    t.integer "accumulated"
    t.integer "si_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_confirmeds", force: :cascade do |t|
    t.bigint "language_id"
    t.bigint "confirmed_id"
    t.string "name"
    t.string "genderAge"
    t.string "residence"
    t.string "infectionRoute"
    t.text "movementRoute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmed_id"], name: "index_language_confirmeds_on_confirmed_id"
    t.index ["language_id"], name: "index_language_confirmeds_on_language_id"
  end

  create_table "language_dongs", force: :cascade do |t|
    t.bigint "language_id"
    t.bigint "dong_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dong_id"], name: "index_language_dongs_on_dong_id"
    t.index ["language_id"], name: "index_language_dongs_on_language_id"
  end

  create_table "language_gus", force: :cascade do |t|
    t.bigint "language_id"
    t.bigint "gu_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gu_id"], name: "index_language_gus_on_gu_id"
    t.index ["language_id"], name: "index_language_gus_on_language_id"
  end

  create_table "language_sis", force: :cascade do |t|
    t.bigint "language_id"
    t.bigint "si_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_language_sis_on_language_id"
    t.index ["si_id"], name: "index_language_sis_on_si_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "location"
    t.string "date"
    t.string "numConfirmed"
    t.string "route"
    t.string "prevention"
    t.string "inProcess"
    t.string "monitored"
    t.string "thisWeek"
    t.string "accumulated"
    t.string "numConfirmedByLocation"
    t.string "today"
    t.string "lastWeek"
    t.string "guide"
    t.string "index"
    t.string "residence"
    t.string "dateConfirmed"
    t.string "routeIdentified"
    t.string "genderAge"
    t.string "confirmedName"
    t.string "infectionRoute"
    t.string "movementRoute"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sis", force: :cascade do |t|
    t.string "name"
    t.integer "inProcessThisWeek"
    t.integer "inProcessAccumulated"
    t.integer "monitoredThisWeek"
    t.integer "monitoredAccumulated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "language_confirmeds", "confirmeds"
  add_foreign_key "language_confirmeds", "languages"
  add_foreign_key "language_dongs", "dongs"
  add_foreign_key "language_dongs", "languages"
  add_foreign_key "language_gus", "gus"
  add_foreign_key "language_gus", "languages"
  add_foreign_key "language_sis", "languages"
  add_foreign_key "language_sis", "sis"
end
