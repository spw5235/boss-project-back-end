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

ActiveRecord::Schema.define(version: 20170221234603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "observations", force: :cascade do |t|
    t.integer  "obs_num"
    t.date     "obs_on"
    t.string   "obs_setting"
    t.string   "obs_task"
    t.integer  "obs_time"
    t.integer  "aet"
    t.integer  "pet"
    t.integer  "oft_m"
    t.integer  "oft_v"
    t.integer  "oft_p"
    t.string   "obs_comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "student_id"
    t.integer  "user_id"
    t.integer  "setting_id"
    t.index ["setting_id"], name: "index_observations_on_setting_id", using: :btree
    t.index ["student_id"], name: "index_observations_on_student_id", using: :btree
    t.index ["user_id"], name: "index_observations_on_user_id", using: :btree
  end

  create_table "settings", force: :cascade do |t|
    t.date     "obs_on"
    t.string   "obs_setting"
    t.string   "obs_task"
    t.integer  "obs_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "student_id"
    t.index ["student_id"], name: "index_settings_on_student_id", using: :btree
    t.index ["user_id"], name: "index_settings_on_user_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "born_on"
    t.string   "school"
    t.string   "teacher"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_students_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "observations", "settings"
  add_foreign_key "observations", "students"
  add_foreign_key "observations", "users"
  add_foreign_key "settings", "students"
  add_foreign_key "settings", "users"
  add_foreign_key "students", "users"
end
