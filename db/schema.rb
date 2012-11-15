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

ActiveRecord::Schema.define(:version => 20121115133148) do

  create_table "identities", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "manager"
    t.string   "logo"
    t.string   "city"
    t.string   "province"
    t.text     "description"
    t.float    "contribution"
    t.integer  "contributed_count"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "province"
    t.integer  "students"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "fullname"
    t.string   "gender"
    t.string   "video"
    t.string   "image"
    t.text     "i_want_to_become"
    t.text     "story"
    t.string   "twitter"
    t.string   "city"
    t.string   "province"
    t.string   "school"
    t.string   "school_id"
    t.integer  "graduation_year"
    t.float    "goal"
    t.integer  "user_id"
    t.text     "stories"
    t.boolean  "reached_goal"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "name"
    t.string   "email"
    t.string   "oauth_token"
    t.datetime "oauth_expire_at"
    t.string   "type"
    t.integer  "profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "gender"
    t.string   "picture"
  end

end
