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

ActiveRecord::Schema.define(version: 20180412005453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dummy_data", force: :cascade do |t|
    t.string  "student_number"
    t.integer "school_year"
    t.string  "school"
    t.string  "grade"
    t.string  "gender"
    t.string  "race"
    t.string  "frl"
    t.decimal "attendance",     precision: 4, scale: 3, default: 0.0
    t.integer "reading"
    t.integer "math"
  end

end
