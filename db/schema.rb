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

ActiveRecord::Schema.define(version: 20170328200546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_comunas_on_region_id", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "publication_attachments", force: :cascade do |t|
    t.integer  "publication_id"
    t.string   "avatar"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "titulo"
    t.string   "region"
    t.string   "comuna"
    t.integer  "precio"
    t.string   "tipo"
    t.integer  "superficie"
    t.integer  "dormitorio"
    t.integer  "baño"
    t.integer  "estacionamiento"
    t.text     "descripcion"
    t.string   "slug"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.string   "state",              default: "in_draft"
    t.string   "avatar"
    t.integer  "comuna_id"
    t.integer  "region_id"
    t.index ["comuna_id"], name: "index_publications_on_comuna_id", using: :btree
    t.index ["region_id"], name: "index_publications_on_region_id", using: :btree
    t.index ["slug"], name: "index_publications_on_slug", unique: true, using: :btree
    t.index ["user_id"], name: "index_publications_on_user_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre"
    t.integer  "fono"
    t.string   "region"
    t.string   "comuna"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "permission_level",       default: 1
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "comunas", "regions"
  add_foreign_key "publications", "comunas"
  add_foreign_key "publications", "regions"
  add_foreign_key "publications", "users"
end
