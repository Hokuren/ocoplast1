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

ActiveRecord::Schema.define(version: 2019_11_06_141726) do

  create_table "add_products", force: :cascade do |t|
    t.string "name"
    t.decimal "cost"
    t.decimal "weight"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_add_products_on_product_id"
  end

  create_table "phases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_treatment_phases", force: :cascade do |t|
    t.decimal "cost"
    t.decimal "weight"
    t.decimal "waste"
    t.integer "phase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["phase_id"], name: "index_product_treatment_phases_on_phase_id"
  end

  create_table "product_treatments", force: :cascade do |t|
    t.decimal "cost"
    t.decimal "weight"
    t.decimal "waste"
    t.integer "product_id", null: false
    t.integer "treatment_id", null: false
    t.integer "product_treatment_phase_id", null: false
    t.integer "product_treatment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_treatments_on_product_id"
    t.index ["product_treatment_id"], name: "index_product_treatments_on_product_treatment_id"
    t.index ["product_treatment_phase_id"], name: "index_product_treatments_on_product_treatment_phase_id"
    t.index ["treatment_id"], name: "index_product_treatments_on_treatment_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "cost"
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "add_products", "products"
  add_foreign_key "product_treatment_phases", "phases"
  add_foreign_key "product_treatments", "product_treatment_phases"
  add_foreign_key "product_treatments", "product_treatments"
  add_foreign_key "product_treatments", "products"
  add_foreign_key "product_treatments", "treatments"
end
