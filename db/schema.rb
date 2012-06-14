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

ActiveRecord::Schema.define(:version => 20120612141817) do

  create_table "app_actions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "app_module_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "app_modules", :force => true do |t|
    t.string   "name"
    t.string   "description"
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

  create_table "ia_actions", :id => false, :force => true do |t|
    t.string "MODULE",      :limit => 20,  :null => false
    t.string "ACTION",      :limit => 20,  :null => false
    t.string "DESCRIPTION", :limit => 200, :null => false
  end

  create_table "ia_modules", :id => false, :force => true do |t|
    t.string "MODULE",      :limit => 20,  :null => false
    t.string "DESCRIPTION", :limit => 200, :null => false
  end

  create_table "ia_privileges", :id => false, :force => true do |t|
    t.string "ROLE",   :limit => 20, :null => false
    t.string "MODULE", :limit => 20, :null => false
    t.string "ACTION", :limit => 20, :null => false
  end

  create_table "ia_roles", :id => false, :force => true do |t|
    t.string "ROLE",        :limit => 20,  :null => false
    t.string "DESCRIPTION", :limit => 200, :null => false
  end

  create_table "ia_user_privs", :id => false, :force => true do |t|
    t.string "ROLE",       :limit => 20, :null => false
    t.string "USERNAME",   :limit => 20, :null => false
    t.date   "VALID_FROM"
    t.date   "VALID_TILL"
  end

  add_index "ia_user_privs", ["ROLE"], :name => "fki_IA_USER_PRIVS_FK_ROLE"
  add_index "ia_user_privs", ["USERNAME"], :name => "fki_IA_USER_PRIVS_FK_USER"

  create_table "ia_users", :id => false, :force => true do |t|
    t.string  "USERNAME", :limit => 20,                     :null => false
    t.string  "FULLNAME", :limit => 200,                    :null => false
    t.boolean "admin",                   :default => false, :null => false
    t.string  "PASSWORD", :limit => 128
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

  create_table "vcount", :id => false, :force => true do |t|
    t.integer "count", :limit => 8
  end

end
