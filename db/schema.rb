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

ActiveRecord::Schema.define(version: 20160830000519) do

  create_table "contractor_projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string  "name"
    t.string  "company_name"
    t.string  "company_address"
    t.integer "ssn"
    t.string  "certificaton"
    t.string  "certification"
  end

  create_table "projects", force: :cascade do |t|
    t.string  "title"
    t.string  "description"
    t.string  "general_contractor"
    t.string  "project_type"
    t.text    "contract_number"
    t.integer "solicitation_number"
    t.text    "contract_amount"
    t.text    "start_date"
    t.text    "substantial_completion_date"
    t.text    "final_completion_date"
    t.text    "project_site"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
