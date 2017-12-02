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

ActiveRecord::Schema.define(version: 20171202032110) do

  create_table "employees", force: :cascade do |t|
    t.integer  "employeeID", limit: 4
    t.string   "firstName",  limit: 255
    t.string   "lastName",   limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer  "foodID",       limit: 4
    t.string   "menuCategory", limit: 255
    t.string   "name",         limit: 255
    t.integer  "price",        limit: 4
    t.boolean  "onMenuNow"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "ingredientID",       limit: 4
    t.string   "menuCategory",       limit: 255
    t.string   "name",               limit: 255
    t.string   "customizationStyle", limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "past_orders", force: :cascade do |t|
    t.integer  "orderID",        limit: 4
    t.integer  "userID",         limit: 4
    t.integer  "employeeID",     limit: 4
    t.string   "itemsOrdered",   limit: 255
    t.decimal  "subtotal",                   precision: 4, scale: 2
    t.decimal  "total",                      precision: 4, scale: 2
    t.decimal  "startTime",                  precision: 4, scale: 2
    t.decimal  "completionTime",             precision: 4, scale: 2
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "userID",      limit: 4
    t.string   "firstName",   limit: 255
    t.string   "lastName",    limit: 255
    t.integer  "dateOfBirth", limit: 4
    t.string   "email",       limit: 255
    t.string   "passW",       limit: 255
    t.integer  "phone",       limit: 4
    t.string   "address",     limit: 255
    t.string   "savedOrder",  limit: 255
    t.string   "lastOrder",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
