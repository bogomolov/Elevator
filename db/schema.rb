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

ActiveRecord::Schema.define(:version => 20120707171345) do

  create_table "app_batches", :force => true do |t|
    t.date     "batch_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "hidden"
  end

  create_table "app_contracts", :force => true do |t|
    t.string   "num"
    t.date     "stamp"
    t.integer  "supplier_id"
    t.date     "start_date"
    t.date     "finish_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "app_incomes", :force => true do |t|
    t.integer  "batch_id",      :null => false
    t.string   "car_num",       :null => false
    t.float    "weight_brutto"
    t.float    "moisture"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.datetime "car_time"
    t.boolean  "hidden"
  end

  create_table "app_seasons", :force => true do |t|
    t.integer  "year"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "app_suppliers", :force => true do |t|
    t.string   "short_name"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conf_properties", :force => true do |t|
    t.string   "section"
    t.string   "param"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "core_actions", :force => true do |t|
    t.integer  "module_id"
    t.string   "name"
    t.string   "description"
    t.integer  "ord"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "core_delegations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.date     "valid_from"
    t.date     "valid_till"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "core_modules", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "ord"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "core_privileges", :force => true do |t|
    t.integer  "role_id"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "core_roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "core_users", :force => true do |t|
    t.string   "username"
    t.string   "fullname"
    t.string   "admin",                  :limit => 1
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",                  :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",                     :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
  end

  add_index "core_users", ["authentication_token"], :name => "index_core_users_on_authentication_token", :unique => true
  add_index "core_users", ["email"], :name => "index_core_users_on_email"
  add_index "core_users", ["reset_password_token"], :name => "index_core_users_on_reset_password_token", :unique => true
  add_index "core_users", ["unlock_token"], :name => "index_core_users_on_unlock_token", :unique => true
  add_index "core_users", ["username"], :name => "index_core_users_on_username", :unique => true

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "suppliers", :force => true do |t|
    t.string   "shortname"
    t.string   "fullname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_bak", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "username"
    t.string   "fullname"
    t.string   "admin",                  :limit => 1
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts"
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
  end

end
