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

ActiveRecord::Schema.define(version: 2020_05_21_204823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.float "base_experience"
    t.string "main_type"
    t.string "main_ability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons_trainers", id: false, force: :cascade do |t|
    t.bigint "trainer_id", null: false
    t.bigint "pokemon_id", null: false
    t.index ["pokemon_id", "trainer_id"], name: "index_pokemons_trainers_on_pokemon_id_and_trainer_id"
    t.index ["trainer_id", "pokemon_id"], name: "index_pokemons_trainers_on_trainer_id_and_pokemon_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "home_region"
    t.boolean "team_member_status"
    t.integer "wins"
    t.integer "losses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
