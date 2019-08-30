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

ActiveRecord::Schema.define(version: 2019_08_28_122336) do

  create_table "addresses", force: :cascade do |t|
    t.integer "flat_no"
    t.string "address"
    t.string "city"
    t.string "pincode"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "common_user_id"
    t.index ["common_user_id"], name: "index_addresses_on_common_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "author_name"
    t.string "language"
  end

  create_table "branches", force: :cascade do |t|
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "common_user_id"
    t.index ["common_user_id"], name: "index_branches_on_common_user_id"
  end

  create_table "common_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "mobile_no"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editions", force: :cascade do |t|
    t.string "version"
    t.date "published_date"
    t.string "cover_type"
    t.integer "no_of_pages"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "book_id"
    t.integer "publication_id"
    t.integer "count"
    t.index ["book_id"], name: "index_editions_on_book_id"
    t.index ["publication_id"], name: "index_editions_on_publication_id"
  end

  create_table "feedback_tables", force: :cascade do |t|
    t.integer "rating"
    t.string "comment"
    t.string "sender_type"
    t.integer "sender_id"
    t.integer "common_user_id"
    t.index ["common_user_id"], name: "index_feedback_tables_on_common_user_id"
    t.index ["sender_type", "sender_id"], name: "index_feedback_tables_on_sender_type_and_sender_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
