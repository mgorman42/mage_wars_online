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

ActiveRecord::Schema.define(version: 2019_09_04_203302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "content_packs", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 5, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_content_packs_on_name", unique: true
  end

  create_table "mages", force: :cascade do |t|
    t.bigint "user_id"
    t.string "type"
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_mages_on_user_id"
  end

  create_table "mages_spells", id: false, force: :cascade do |t|
    t.bigint "mage_id", null: false
    t.bigint "spell_id", null: false
    t.index ["mage_id", "spell_id"], name: "index_mages_spells_on_mage_id_and_spell_id"
    t.index ["spell_id", "mage_id"], name: "index_mages_spells_on_spell_id_and_mage_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "content_pack_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_pack_id", "user_id"], name: "index_purchases_on_content_pack_id_and_user_id"
    t.index ["content_pack_id"], name: "index_purchases_on_content_pack_id"
    t.index ["user_id", "content_pack_id"], name: "index_purchases_on_user_id_and_content_pack_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "spells", force: :cascade do |t|
    t.text "cost_data"
    t.text "target_data"
    t.text "effect"
    t.text "description"
    t.text "effect_data"
    t.string "name"
    t.string "type"
    t.bigint "content_pack_id"
    t.integer "cost"
    t.integer "min_range"
    t.integer "max_range"
    t.integer "dark_level"
    t.integer "holy_level"
    t.integer "nature_level"
    t.integer "mind_level"
    t.integer "arcane_level"
    t.integer "war_level"
    t.integer "earth_level"
    t.integer "water_level"
    t.integer "air_level"
    t.integer "fire_level"
    t.boolean "select_school"
    t.boolean "quick_action"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_pack_id"], name: "index_spells_on_content_pack_id"
    t.index ["name"], name: "index_spells_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.string "confirm_token"
    t.boolean "email_confirmed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
