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

ActiveRecord::Schema[7.1].define(version: 2025_01_06_150216) do
  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.integer "quantity"
    t.integer "produkt_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produkt_id"], name: "index_orders_on_produkt_id"
  end

  create_table "produkts", force: :cascade do |t|
    t.integer "cena"
    t.string "obrazek"
    t.text "popis"
    t.string "velikost"
    t.string "barva"
    t.string "nazev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pocet", default: 0
  end

  add_foreign_key "orders", "produkts"
end
