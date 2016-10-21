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

ActiveRecord::Schema.define(version: 20161017165124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "models", force: :cascade do |t|
    t.string   "employer"
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

end
