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

ActiveRecord::Schema[7.0].define(version: 2024_05_24_014041) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "user_id"
    t.integer "tasks_count"
    t.integer "goals_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feelings_level1s", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "journal_entry_feelings_id"
    t.integer "feelings_level_2s_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feelings_level2s", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "feeling_level1_id"
    t.integer "feelings_level_3s_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feelings_level3s", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "feeling_level2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journal_entries", force: :cascade do |t|
    t.integer "user_id"
    t.string "date"
    t.string "note"
    t.integer "journal_entries_feelings_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journal_entries_feelings", force: :cascade do |t|
    t.integer "journal_entry_id"
    t.integer "feelings_level_1s_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "status"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "default_playlist"
    t.integer "categories_count"
    t.integer "journal_entries_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
