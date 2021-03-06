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

ActiveRecord::Schema.define(:version => 20140126002504) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "meet_results", :force => true do |t|
    t.string   "lifter"
    t.decimal  "weight"
    t.string   "gender"
    t.decimal  "squat1",            :precision => 6, :scale => 3
    t.decimal  "squat2",            :precision => 6, :scale => 3
    t.decimal  "squat3",            :precision => 6, :scale => 3
    t.boolean  "squat1_success"
    t.boolean  "squat2_success"
    t.boolean  "squat3_success"
    t.decimal  "bench1",            :precision => 6, :scale => 3
    t.decimal  "bench2",            :precision => 6, :scale => 3
    t.decimal  "bench3",            :precision => 6, :scale => 3
    t.boolean  "bench1_success"
    t.boolean  "bench2_success"
    t.boolean  "bench3_success"
    t.decimal  "deadlift1",         :precision => 6, :scale => 3
    t.decimal  "deadlift2",         :precision => 6, :scale => 3
    t.decimal  "deadlift3",         :precision => 6, :scale => 3
    t.boolean  "deadlift1_success"
    t.boolean  "deadlift2_success"
    t.boolean  "deadlift3_success"
    t.integer  "meet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meets", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "occured"
  end

  create_table "oly_meet_results", :force => true do |t|
    t.string   "lifter"
    t.decimal  "weight"
    t.string   "gender"
    t.decimal  "snatch1",               :precision => 6, :scale => 3
    t.decimal  "snatch2",               :precision => 6, :scale => 3
    t.decimal  "snatch3",               :precision => 6, :scale => 3
    t.boolean  "snatch1_success"
    t.boolean  "snatch2_success"
    t.boolean  "snatch3_success"
    t.decimal  "cleanandjerk1",         :precision => 6, :scale => 3
    t.decimal  "cleanandjerk2",         :precision => 6, :scale => 3
    t.decimal  "cleanandjerk3",         :precision => 6, :scale => 3
    t.boolean  "cleanandjerk1_success"
    t.boolean  "cleanandjerk2_success"
    t.boolean  "cleanandjerk3_success"
    t.integer  "oly_meet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oly_meets", :force => true do |t|
    t.string   "title"
    t.datetime "occured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.boolean  "private"
    t.text     "content"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "in_nav"
  end

  add_index "pages", ["title"], :name => "index_pages_on_title", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                                :default => "",    :null => false
    t.string   "encrypted_password",                                   :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.string   "studying"
    t.string   "graduating"
    t.decimal  "bodyweight"
    t.string   "weight_class"
    t.string   "gender",                                               :default => "M"
    t.boolean  "is_admin",                                             :default => false
    t.decimal  "squat_max",              :precision => 6, :scale => 3
    t.decimal  "bench_max",              :precision => 6, :scale => 3
    t.decimal  "deadlift_max",           :precision => 6, :scale => 3
    t.integer  "registration_number"
    t.decimal  "snatch_max",             :precision => 6, :scale => 3
    t.decimal  "clean_and_jerk_max",     :precision => 6, :scale => 3
    t.string   "oly_weight_class"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
