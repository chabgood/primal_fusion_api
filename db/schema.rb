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

ActiveRecord::Schema.define(version: 2018_06_15_042518) do

  create_table "disclosure_forms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "encrypted_name"
    t.string "encrypted_dob"
    t.string "encrypted_street"
    t.string "encrypted_apt_number"
    t.string "encrypted_city_state_zip"
    t.string "encrypted_email"
    t.string "encrypted_home_phone"
    t.string "encrypted_whatisnst"
    t.string "encrypted_participant"
    t.string "encrypted_pricingandpayment"
    t.string "encrypted_finalagreement"
    t.string "encrypted_emergency_contact_name"
    t.string "encrypted_emergency_contact_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encrypted_name"], name: "index_disclosure_forms_on_encrypted_name"
  end

end
