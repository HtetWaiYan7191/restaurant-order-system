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

ActiveRecord::Schema[7.0].define(version: 2023_10_19_154605) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_foods", force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.bigint "food_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_foods_on_cart_id"
    t.index ["food_id"], name: "index_cart_foods_on_food_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "description"
    t.decimal "price"
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.bigint "shop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_foods_on_category_id"
    t.index ["shop_id"], name: "index_foods_on_shop_id"
    t.index ["user_id"], name: "index_foods_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "food_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_orders_on_food_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cart_foods", "carts"
  add_foreign_key "cart_foods", "foods"
  add_foreign_key "carts", "users"
  add_foreign_key "foods", "categories"
  add_foreign_key "foods", "shops"
  add_foreign_key "foods", "users"
  add_foreign_key "orders", "foods"
  add_foreign_key "orders", "users"
end
