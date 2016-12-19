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

ActiveRecord::Schema.define(version: 20161219152823) do

  create_table "account_titles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "symbol",     limit: 1,  null: false
    t.string   "name",       limit: 50, null: false
    t.boolean  "is_income",             null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_account_titles_on_name", unique: true, using: :btree
    t.index ["symbol"], name: "index_account_titles_on_symbol", unique: true, using: :btree
  end

  create_table "account_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "symbol",     limit: 2,  null: false
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_account_types_on_name", unique: true, using: :btree
    t.index ["symbol"], name: "index_account_types_on_symbol", unique: true, using: :btree
  end

  create_table "chips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "symbol",     limit: 2,  null: false
    t.string   "name",       limit: 50, null: false
    t.string   "color",      limit: 10, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_chips_on_name", unique: true, using: :btree
    t.index ["symbol"], name: "index_chips_on_symbol", unique: true, using: :btree
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "provider_id",            null: false
    t.string   "name",        limit: 50, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["provider_id", "name"], name: "index_clients_on_provider_id_and_name", unique: true, using: :btree
    t.index ["provider_id"], name: "index_clients_on_provider_id", using: :btree
  end

  create_table "decision_makings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "symbol",     limit: 1,  null: false
    t.string   "name",       limit: 50, null: false
    t.boolean  "is_anytime",            null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_decision_makings_on_name", unique: true, using: :btree
    t.index ["symbol"], name: "index_decision_makings_on_symbol", unique: true, using: :btree
  end

  create_table "entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "game_id",    null: false
    t.integer  "player_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id", "player_id"], name: "index_entries_on_game_id_and_player_id", unique: true, using: :btree
    t.index ["game_id"], name: "index_entries_on_game_id", using: :btree
    t.index ["player_id"], name: "index_entries_on_player_id", using: :btree
  end

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "round_id",   null: false
    t.integer  "table_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id", "table_id"], name: "index_games_on_round_id_and_table_id", unique: true, using: :btree
    t.index ["round_id"], name: "index_games_on_round_id", using: :btree
    t.index ["table_id"], name: "index_games_on_table_id", using: :btree
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "symbol",     limit: 1,  null: false
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_jobs_on_name", unique: true, using: :btree
    t.index ["symbol"], name: "index_jobs_on_symbol", unique: true, using: :btree
  end

  create_table "machine_tools", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "symbol",     limit: 2,  null: false
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_machine_tools_on_name", unique: true, using: :btree
    t.index ["symbol"], name: "index_machine_tools_on_symbol", unique: true, using: :btree
  end

  create_table "options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "entry_id",               null: false
    t.integer  "chip_id",                null: false
    t.integer  "number",     default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["chip_id"], name: "index_options_on_chip_id", using: :btree
    t.index ["entry_id", "chip_id"], name: "index_options_on_entry_id_and_chip_id", unique: true, using: :btree
    t.index ["entry_id"], name: "index_options_on_entry_id", using: :btree
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "client_id",             null: false
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["client_id", "name"], name: "index_players_on_client_id_and_name", unique: true, using: :btree
    t.index ["client_id"], name: "index_players_on_client_id", using: :btree
  end

  create_table "providers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_providers_on_name", unique: true, using: :btree
  end

  create_table "risks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number",                null: false
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_risks_on_name", unique: true, using: :btree
    t.index ["number"], name: "index_risks_on_number", unique: true, using: :btree
  end

  create_table "rounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "training_id", null: false
    t.integer  "number",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["training_id", "number"], name: "index_rounds_on_training_id_and_number", unique: true, using: :btree
    t.index ["training_id"], name: "index_rounds_on_training_id", using: :btree
  end

  create_table "stock_rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "symbol",     limit: 1,  null: false
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_stock_rooms_on_name", unique: true, using: :btree
    t.index ["symbol"], name: "index_stock_rooms_on_symbol", unique: true, using: :btree
  end

  create_table "tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "training_id"
    t.string   "symbol",      limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["training_id", "symbol"], name: "index_tables_on_training_id_and_symbol", unique: true, using: :btree
    t.index ["training_id"], name: "index_tables_on_training_id", using: :btree
  end

  create_table "trainings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "client_id",             null: false
    t.date     "do_at",                 null: false
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["client_id", "do_at", "name"], name: "index_trainings_on_client_id_and_do_at_and_name", unique: true, using: :btree
    t.index ["client_id"], name: "index_trainings_on_client_id", using: :btree
  end

  add_foreign_key "clients", "providers"
  add_foreign_key "entries", "games"
  add_foreign_key "entries", "players"
  add_foreign_key "games", "rounds"
  add_foreign_key "games", "tables"
  add_foreign_key "options", "chips"
  add_foreign_key "options", "entries"
  add_foreign_key "players", "clients"
  add_foreign_key "rounds", "trainings"
  add_foreign_key "tables", "trainings"
  add_foreign_key "trainings", "clients"
end
