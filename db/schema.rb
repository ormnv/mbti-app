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

ActiveRecord::Schema.define(version: 2020_12_20_025130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cognitive_functions", force: :cascade do |t|
    t.string "direction", limit: 1, null: false
    t.string "action", limit: 1, null: false
    t.string "symbol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "peer_sets", force: :cascade do |t|
    t.integer "first_user_id"
    t.integer "second_user_id"
    t.boolean "first_user_confirmation"
    t.boolean "second_user_confirmation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personalities", force: :cascade do |t|
    t.string "primary_function_symbol"
    t.string "secondary_function_symbol"
    t.string "tertiary_function_symbol"
    t.string "inferior_function_symbol"
    t.string "tagline"
    t.string "description"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "personality_id"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
