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

ActiveRecord::Schema.define(version: 0) do

  create_table "accounts", force: :cascade do |t|
    t.string   "uuid",        limit: 255
    t.string   "password",    limit: 255
    t.string   "name",        limit: 255
    t.boolean  "admin",       limit: 1
    t.boolean  "namechosen",  limit: 1
    t.boolean  "verified",    limit: 1
    t.integer  "guild",       limit: 4
    t.integer  "guildRank",   limit: 4
    t.integer  "vaultCount",  limit: 4
    t.integer  "maxCharSlot", limit: 4
    t.datetime "regTime"
    t.boolean  "guest",       limit: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "accId",      limit: 4
    t.integer  "charId",     limit: 4
    t.integer  "charType",   limit: 4
    t.integer  "level",      limit: 4
    t.integer  "exp",        limit: 4
    t.integer  "fame",       limit: 4
    t.integer  "items",      limit: 4
    t.integer  "hp",         limit: 4
    t.integer  "mp",         limit: 4
    t.string   "stats",      limit: 255
    t.boolean  "dead",       limit: 1
    t.integer  "tex1",       limit: 4
    t.integer  "tex2",       limit: 4
    t.integer  "pet",        limit: 4
    t.string   "fameStats",  limit: 255
    t.datetime "createTime",             default: '2015-05-15 02:38:07', null: false
    t.datetime "deathTime"
    t.integer  "totalFame",  limit: 4
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "classstats", force: :cascade do |t|
    t.integer  "accId",      limit: 4
    t.integer  "objType",    limit: 4
    t.integer  "bestLv",     limit: 4
    t.integer  "bestFame",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "deaths", force: :cascade do |t|
    t.integer  "accId",     limit: 4
    t.integer  "chrId",     limit: 4
    t.string   "name",      limit: 255
    t.integer  "charType",  limit: 4
    t.integer  "tex1",      limit: 4
    t.integer  "tex2",      limit: 4
    t.string   "items",     limit: 255
    t.integer  "fame",      limit: 4
    t.string   "fameStats", limit: 255
    t.integer  "totalFame", limit: 4
    t.boolean  "firstBorn", limit: 1
    t.string   "killer",    limit: 255
    t.datetime "time",                  default: '2015-05-15 02:38:35', null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "icon",  limit: 255
    t.string   "title", limit: 255
    t.string   "text",  limit: 255
    t.string   "link",  limit: 255
    t.datetime "date",              default: '2015-05-15 02:38:47', null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "accId",        limit: 4
    t.integer "fame",         limit: 4
    t.integer "totalFame",    limit: 4
    t.integer "credits",      limit: 4
    t.integer "totalCredits", limit: 4
  end

  create_table "vaults", primary_key: "chestId", force: :cascade do |t|
    t.integer "accId", limit: 4
    t.string  "items", limit: 255
  end

end
