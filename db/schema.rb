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

ActiveRecord::Schema.define(:version => 20120617104654) do

  create_table "app_actions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "app_module_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ord"
  end

  create_table "app_modules", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ord"
  end

  create_table "contracts", :force => true do |t|
    t.string   "num"
    t.date     "stamp"
    t.integer  "supplier_id"
    t.date     "startdate"
    t.date     "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "privileges", :force => true do |t|
    t.integer  "role_id"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "role"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "shortname"
    t.string   "fullname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_privileges", :force => true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.date     "valid_from"
    t.date     "valid_till"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "fullname"
    t.boolean  "admin"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
