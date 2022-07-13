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

ActiveRecord::Schema.define(version: 2022_07_13_033755) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pethistories", force: :cascade do |t|
    t.date "date"
    t.integer "state"
    t.float "weight"
    t.float "height"
    t.string "diagnosis"
    t.text "anamnesis"
    t.integer "pet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_pethistories_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "race"
    t.date "birth_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "client_id", null: false
    t.index ["client_id"], name: "index_pets_on_client_id"
  end

  add_foreign_key "pethistories", "pets"
  add_foreign_key "pets", "clients"
end
