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

ActiveRecord::Schema.define(version: 20150513202519) do

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "phone"
    t.text     "notes"
    t.integer  "loans_count",                                   default: 0
    t.integer  "payed_loans_count",                             default: 0
    t.integer  "active_loans_count",                            default: 0
    t.decimal  "total_money_borrowed", precision: 11, scale: 2
    t.integer  "delayed_quotas_count",                          default: 0
    t.integer  "score"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "status"
    t.decimal  "amount",             precision: 11, scale: 2
    t.string   "currency"
    t.text     "notes"
    t.decimal  "tax_rate",           precision: 11, scale: 2
    t.date     "start_date"
    t.date     "estimated_end_date"
    t.integer  "monthly_amout"
    t.integer  "quotas"
    t.decimal  "quota_amount",       precision: 11, scale: 2
    t.integer  "quotas_payed",                                default: 0
    t.integer  "quotas_delayed",                              default: 0
    t.decimal  "payed_amount",       precision: 11, scale: 2, default: 0.0
    t.decimal  "total_earnings",     precision: 11, scale: 2, default: 0.0
    t.decimal  "earning_per_quota",  precision: 11, scale: 2
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  add_index "loans", ["customer_id"], name: "index_loans_on_customer_id"

  create_table "payments", force: :cascade do |t|
    t.integer  "loan_id"
    t.string   "status"
    t.integer  "amount",         default: 0
    t.date     "estimated_date"
    t.date     "payment_date"
    t.text     "notes"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "payments", ["loan_id"], name: "index_payments_on_loan_id"

end
