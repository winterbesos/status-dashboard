# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_09_071451) do

  create_table "programs", force: :cascade do |t|
    t.string "identifier"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sction_name"
  end

  create_table "progresses", force: :cascade do |t|
    t.datetime "begun_at"
    t.datetime "ended_at"
    t.integer "status"
    t.string "creator"
    t.float "rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "program_id", null: false
    t.string "description"
    t.index ["program_id"], name: "index_progresses_on_program_id"
  end

  add_foreign_key "progresses", "programs"
end
