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

ActiveRecord::Schema.define(version: 2020_08_12_080514) do

  create_table "countries", force: :cascade do |t|
    t.string "iso"
    t.string "name"
    t.string "printable_name"
    t.string "iso3"
    t.integer "numcode"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
  end

  create_table "manager_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "teamName"
    t.text "description"
    t.integer "country_id", null: false
    t.string "managerFName"
    t.string "managerLName"
    t.text "sponsorsAndPartners"
    t.boolean "lookingForPlayers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "twitterHandle"
    t.string "siteUrl"
    t.index ["country_id"], name: "index_manager_profiles_on_country_id"
    t.index ["user_id"], name: "index_manager_profiles_on_user_id"
  end

  create_table "player_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "playerTag"
    t.text "bio"
    t.string "firstName"
    t.string "lastName"
    t.date "dob"
    t.integer "country_id", null: false
    t.boolean "hasSponsor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "twitterHandle"
    t.string "twitchHandle"
    t.integer "manager_profile_id"
    t.index ["country_id"], name: "index_player_profiles_on_country_id"
    t.index ["manager_profile_id"], name: "index_player_profiles_on_manager_profile_id"
    t.index ["user_id"], name: "index_player_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "managerCheck"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "manager_profiles", "countries"
  add_foreign_key "manager_profiles", "users"
  add_foreign_key "player_profiles", "countries"
  add_foreign_key "player_profiles", "manager_profiles"
  add_foreign_key "player_profiles", "users"
end
