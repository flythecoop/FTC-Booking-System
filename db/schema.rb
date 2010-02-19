# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100219152251) do

  create_table "bookings", :force => true do |t|
    t.integer  "user_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "paid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resources_id"
    t.string   "payment_ref"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "email"
    t.string   "phone"
    t.string   "add1"
    t.string   "add2"
    t.string   "city"
    t.string   "postcode"
    t.string   "lat"
    t.string   "lon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", :force => true do |t|
    t.integer  "location_id"
    t.string   "name"
    t.text     "description"
    t.integer  "start_hour"
    t.integer  "end_hour"
    t.decimal  "member_price",     :precision => 8, :scale => 2
    t.decimal  "non_member_price", :precision => 8, :scale => 2
    t.integer  "number_available"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
    t.boolean  "member"
    t.string   "first_name"
    t.string   "surname"
    t.string   "company"
    t.string   "phone"
    t.datetime "member_until"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
