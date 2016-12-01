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

ActiveRecord::Schema.define(version: 20161201063427) do

  create_table "create_a_demos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "uuid",        limit: 32
    t.string   "name",        limit: 22,                     null: false
    t.string   "number",      limit: 22,                     null: false
    t.string   "person_name", limit: 22,                     null: false
    t.string   "status_code", limit: 30, default: "ENABLED", null: false
    t.string   "created_by",  limit: 22,                     null: false
    t.string   "updated_by",  limit: 22,                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "create_peron_owners", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name"
    t.string "password"
    t.string "secret",   limit: 2
    t.string "mail",     limit: 22
  end

  create_table "microposts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_a_demo", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "occurrence_palce",     limit: 32
    t.datetime "occurrence_date"
    t.string   "inside_grade",         limit: 20
    t.string   "injury_mechanism",     limit: 50
    t.string   "payment_forms",        limit: 20
    t.string   "payment_institutions", limit: 50
    t.string   "status_code",          limit: 30, default: "ENABLED"
    t.string   "created_by",           limit: 22
    t.string   "updated_by",           limit: 22
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_blog_indices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "source_id",   limit: 22,                     null: false
    t.string   "name",        limit: 50,                     null: false
    t.string   "field",       limit: 50,                     null: false
    t.string   "status_code", limit: 30, default: "ENABLED"
    t.string   "created_by",  limit: 22
    t.string   "updated_by",  limit: 22
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid",        limit: 32
  end

  create_table "other_informations", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "person_id",   limit: 32
    t.string "information"
  end

  create_table "people", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "people_name", limit: 32
    t.string   "first_name",  limit: 32
    t.string   "last_name",   limit: 32
    t.string   "address",     limit: 32
    t.string   "country",     limit: 32
    t.string   "city",        limit: 32
    t.string   "street",      limit: 32
    t.string   "postal_code", limit: 32
    t.string   "email",       limit: 32
    t.string   "password",    limit: 32
    t.string   "payment",     limit: 32
    t.string   "status_code", limit: 30, default: "ENABLED"
    t.string   "created_by",  limit: 22
    t.string   "updated_by",  limit: 22
    t.datetime "date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "avatar"
  end

end
