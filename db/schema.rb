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

ActiveRecord::Schema.define(:version => 20140802110305) do

  create_table "attendances", :force => true do |t|
    t.integer  "wday"
    t.integer  "attend_day"
    t.integer  "od"
    t.integer  "el"
    t.integer  "cl"
    t.integer  "sl"
    t.integer  "lop"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "employee_id"
  end

  create_table "deducts", :force => true do |t|
    t.integer  "pf"
    t.integer  "esi"
    t.integer  "te"
    t.integer  "share"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "employee_id"
    t.integer  "total_deduction"
  end

  create_table "employees", :force => true do |t|
    t.string   "emp_code"
    t.string   "emp_category"
    t.string   "emp_branch"
    t.string   "emp_name"
    t.string   "emp_designation"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "dob"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "Age"
    t.integer  "mobile"
    t.string   "address"
    t.string   "gender"
  end

  create_table "sals", :force => true do |t|
    t.integer  "basic_paisa"
    t.string   "basic_currency"
    t.integer  "da_paisa"
    t.string   "da_currency"
    t.integer  "hra_paisa"
    t.string   "hra_currency"
    t.integer  "cca_paisa"
    t.string   "cca_currency"
    t.integer  "spl_paisa"
    t.string   "spl_currency"
    t.integer  "exp_paisa"
    t.string   "exp_currency"
    t.integer  "total_paisa"
    t.string   "total_currency"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "employee_id"
    t.integer  "attendance_id"
    t.integer  "deduct_id"
    t.integer  "gross_paisa"
    t.integer  "gross_currency"
    t.integer  "net_sal_currency"
    t.integer  "net_sal_paisa"
  end

end
