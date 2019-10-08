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

ActiveRecord::Schema.define(version: 2019_10_08_111811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_developers_on_name"
  end

  create_table "games", force: :cascade do |t|
    t.string "name", null: false
    t.string "genre"
    t.integer "avg_length"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "developer_id", null: false
    t.integer "publisher_id", null: false
    t.index ["developer_id"], name: "index_games_on_developer_id"
    t.index ["name"], name: "index_games_on_name"
    t.index ["publisher_id"], name: "index_games_on_publisher_id"
  end

  create_table "platform_game_attachments", force: :cascade do |t|
    t.bigint "platform_game_id", null: false
    t.string "url", null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_game_id"], name: "index_platform_game_attachments_on_platform_game_id"
    t.index ["type"], name: "index_platform_game_attachments_on_type"
  end

  create_table "platform_game_release_pictures", force: :cascade do |t|
    t.bigint "platform_game_release_id", null: false
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_game_release_id"], name: "index_release_pictures_on_platform_game_release_id"
  end

  create_table "platform_game_releases", force: :cascade do |t|
    t.bigint "platform_game_id", null: false
    t.string "name", null: false
    t.string "type", null: false
    t.integer "edition_type", default: 0, null: false
    t.boolean "dlc", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_game_id"], name: "index_platform_game_releases_on_platform_game_id"
    t.index ["type"], name: "index_platform_game_releases_on_type"
  end

  create_table "platform_games", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "platform_id", null: false
    t.integer "metacritic_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_platform_games_on_game_id"
    t.index ["platform_id"], name: "index_platform_games_on_platform_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_platforms_on_name"
  end

  create_table "prices", force: :cascade do |t|
    t.bigint "platform_game_release_id", null: false
    t.integer "amount"
    t.integer "currency"
    t.boolean "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_game_release_id"], name: "index_prices_on_platform_game_release_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_publishers_on_name"
  end

  add_foreign_key "games", "developers"
  add_foreign_key "games", "publishers"
  add_foreign_key "platform_game_attachments", "platform_games"
  add_foreign_key "platform_game_release_pictures", "platform_game_releases"
  add_foreign_key "platform_game_releases", "platform_games"
  add_foreign_key "platform_games", "games"
  add_foreign_key "platform_games", "platforms"
  add_foreign_key "prices", "platform_game_releases"
end
