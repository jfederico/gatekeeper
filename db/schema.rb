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

ActiveRecord::Schema.define(version: 20160420155226) do

  create_table "collaboration_callbacks", force: :cascade do |t|
    t.string   "request_method", limit: 255
    t.string   "host",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_lti2_provider_lti_launches", force: :cascade do |t|
    t.integer  "tool_id",    limit: 8
    t.string   "nonce",      limit: 255
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_lti2_provider_registrations", force: :cascade do |t|
    t.string   "uuid",                        limit: 255
    t.text     "registration_request_params"
    t.text     "tool_proxy_json"
    t.string   "workflow_state",              limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tool_id",                     limit: 8
    t.text     "correlation_id"
  end

  add_index "rails_lti2_provider_registrations", ["correlation_id"], name: "index_rails_lti2_provider_registrations_on_correlation_id", unique: true

  create_table "rails_lti2_provider_tools", force: :cascade do |t|
    t.string   "uuid",          limit: 255
    t.text     "shared_secret"
    t.text     "tool_settings"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lti_version",   limit: 255
  end

end
