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

ActiveRecord::Schema.define(version: 20161219072818) do

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "provider_id",            null: false
    t.string   "name",        limit: 50, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["provider_id", "name"], name: "index_clients_on_provider_id_and_name", unique: true, using: :btree
    t.index ["provider_id"], name: "index_clients_on_provider_id", using: :btree
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

  create_table "rounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "training_id", null: false
    t.integer  "number",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["training_id", "number"], name: "index_rounds_on_training_id_and_number", unique: true, using: :btree
    t.index ["training_id"], name: "index_rounds_on_training_id", using: :btree
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
  add_foreign_key "players", "clients"
  add_foreign_key "rounds", "trainings"
  add_foreign_key "tables", "trainings"
  add_foreign_key "trainings", "clients"
end
