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

ActiveRecord::Schema.define(version: 20170516005657) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.string   "trans_type"
    t.decimal  "gross_loan"
    t.string   "loan_term"
    t.date     "closing_date"
    t.boolean  "rehab"
    t.decimal  "rehab_funds"
    t.string   "coll_address"
    t.string   "prop_type"
    t.boolean  "occupy"
    t.date     "contract_exp"
    t.decimal  "seller_con"
    t.decimal  "salesprice"
    t.decimal  "as_is_val"
    t.decimal  "arv"
    t.decimal  "ltc"
    t.decimal  "ltv_as"
    t.decimal  "ltv_eff"
    t.date     "purch_date"
    t.decimal  "verif_improv"
    t.decimal  "payoff"
    t.string   "lender_name"
    t.decimal  "purch_price"
    t.decimal  "appraised_val"
    t.boolean  "borrower"
    t.string   "fname"
    t.string   "lname"
    t.string   "hemail"
    t.string   "hphone"
    t.string   "home_add"
    t.string   "citizen"
    t.integer  "credit_score"
    t.date     "bk"
    t.integer  "sixty_days"
    t.boolean  "foreclosure"
    t.date     "last_fc_ss"
    t.string   "entity"
    t.string   "bizname"
    t.string   "bizadd"
    t.string   "bizemail"
    t.string   "bizphone"
    t.integer  "purchsixmo"
    t.integer  "purchtwelvemo"
    t.integer  "purchlife"
    t.decimal  "avg_price"
    t.date     "dob"
    t.string   "ssn"
    t.string   "ein"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
