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


ActiveRecord::Schema.define(version: 20161104183511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "job_seekers_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["job_seekers_id"], name: "index_comments_on_job_seekers_id", using: :btree
  end

  create_table "employers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "location"
    t.text     "bio"
    t.string   "company_name"
    t.string   "industy"
    t.string   "company_website"
    t.string   "city"
    t.string   "social_media_links"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "job_id"
    t.integer  "job_seeker_id"
  end

  create_table "job_seekers", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "state"
    t.string   "city"
    t.text     "bio"
    t.string   "portfolio"
    t.string   "social_media"
    t.integer  "rating"
    t.text     "comments"
    t.text     "interests"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "skill_id"
    t.integer  "job_id"
    t.integer  "employer_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "skills_needed_1"
    t.string   "skills_needed_2"
    t.string   "skills_needed_3"
    t.string   "skills_needed_4"
    t.string   "name"
    t.string   "company"
    t.string   "owner"
    t.text     "desc"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "employer_id"
    t.integer  "job_seeker_id"
    t.integer  "skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "skill_1"
    t.string   "skill_2"
    t.string   "skill_3"
    t.string   "skill_4"
    t.string   "skill_5"
    t.string   "skill_6"
    t.string   "skill_7"
    t.string   "skill_8"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "job_id"
    t.integer  "job_seeker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "employer_id"
    t.integer  "job_seeker_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "comments", "job_seekers", column: "job_seekers_id"
end
