# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160109154617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_rooms", force: :cascade do |t|
    t.integer  "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_showtimes", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "movie_room_id"
    t.datetime "start_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "movie_showtimes", ["movie_id"], name: "index_movie_showtimes_on_movie_id", using: :btree
  add_index "movie_showtimes", ["movie_room_id"], name: "index_movie_showtimes_on_movie_room_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.integer  "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "movie_showtime_id"
    t.integer  "seat_room_id"
    t.integer  "user_id"
    t.integer  "food_id"
    t.datetime "start_time"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "reservations", ["food_id"], name: "index_reservations_on_food_id", using: :btree
  add_index "reservations", ["movie_showtime_id"], name: "index_reservations_on_movie_showtime_id", using: :btree
  add_index "reservations", ["seat_room_id"], name: "index_reservations_on_seat_room_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "seat_rooms", force: :cascade do |t|
    t.integer  "seat"
    t.string   "line"
    t.string   "state"
    t.integer  "movie_room_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "seat_rooms", ["movie_room_id"], name: "index_seat_rooms_on_movie_room_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "movie_showtimes", "movie_rooms"
  add_foreign_key "movie_showtimes", "movies"
  add_foreign_key "reservations", "foods"
  add_foreign_key "reservations", "movie_showtimes"
  add_foreign_key "reservations", "seat_rooms"
  add_foreign_key "reservations", "users"
  add_foreign_key "seat_rooms", "movie_rooms"
end
