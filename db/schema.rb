# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_03_230223) do

  create_table "gifs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "price"
    t.integer "giftee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["giftee_id"], name: "index_gifs_on_giftee_id"
  end

  create_table "giftees", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "budget"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "giftee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["giftee_id"], name: "index_gifts_on_giftee_id"
  end

  add_foreign_key "gifs", "giftees"
  add_foreign_key "gifts", "giftees"
end
