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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120801154500) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authors", ["name"], :name => "index_authors_on_name"

  create_table "authors_proposals", :force => true do |t|
    t.integer "author_id"
    t.integer "proposal_id"
  end

  add_index "authors_proposals", ["author_id"], :name => "index_authors_proposals_on_author_id"
  add_index "authors_proposals", ["proposal_id"], :name => "index_authors_proposals_on_proposal_id"

  create_table "decision_points", :force => true do |t|
    t.string   "text"
    t.integer  "proposal_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "decision_points", ["proposal_id"], :name => "index_decision_points_on_proposal_id"

  create_table "proposals", :force => true do |t|
    t.string   "header",     :null => false
    t.string   "number",     :null => false
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "proposals", ["header"], :name => "index_proposals_on_header"
  add_index "proposals", ["number"], :name => "index_proposals_on_number", :unique => true

end
