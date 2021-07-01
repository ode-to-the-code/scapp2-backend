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

ActiveRecord::Schema.define(version: 2021_06_20_220811) do

  create_table "entries", force: :cascade do |t|
    t.integer "incident_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "situation"
    t.string "friendresponse"
    t.string "selftalk"
  end


  create_table "incidents", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

#
#
# incident 1- Went to Friend's Birthday
# Went to Get a New Car
#
#
# -------
#
# entry1- got there late
# entry2- forgot gift
#
#
#
# ---Went to Friend's Birthday--
#
# Entry 1
# 1 brief description
# i went to my friends birthday
#
# 2
# self talk
# i got there late, theyll think i don't care about them
#
# 3
# positive friendresponse
# you made it here, they don't care etc
#
#
# Entry2
# forgot to bring a gift
#
#
#
#
#
#
#
#
#
