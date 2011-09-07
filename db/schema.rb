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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110907011200) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "coordinator_name"
    t.string   "coordinator_email"
    t.string   "coordinator_phone"
    t.text     "note"
  end

  create_table "postings", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "company"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
    t.boolean  "applied"
  end

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.text     "question"
    t.text     "answer"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
