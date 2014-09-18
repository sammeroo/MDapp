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

ActiveRecord::Schema.define(version: 20140918183250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "complaints", force: true do |t|
    t.string   "cough_dur"
    t.string   "cough_det"
    t.string   "sob_dur"
    t.string   "sob_det"
    t.string   "expectoration_dur"
    t.string   "expectoration_det"
    t.string   "chestpain_dur"
    t.string   "chestpain_det"
    t.string   "wheezy_dur"
    t.string   "wheezy_det"
    t.string   "hemoptysis_dur"
    t.string   "hemoptysis_det"
    t.string   "systemicsymp_dur"
    t.string   "systemicsymp_det"
    t.string   "others"
    t.string   "smoking_history"
    t.string   "smoking_freq"
    t.string   "smoking_current"
    t.string   "comorbidity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs", force: true do |t|
    t.string   "name"
    t.string   "dosage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pid"
    t.string   "occupation"
    t.integer  "age"
    t.string   "sex"
    t.string   "reference"
    t.date     "regdate"
    t.decimal  "PR",                  precision: 5, scale: 2
    t.string   "BP"
    t.decimal  "Weight",              precision: 5, scale: 2
    t.decimal  "Height",              precision: 5, scale: 2
    t.decimal  "SaO2",                precision: 4, scale: 2
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.date     "dob"
  end

  add_index "patients", ["pid"], name: "index_patients_on_pid", unique: true, using: :btree

  create_table "pdads", force: true do |t|
    t.integer  "patient_id"
    t.string   "cough_nasal_hist"
    t.string   "seasonal_symptoms"
    t.string   "family_hist_nasal"
    t.string   "family_hist_asthma"
    t.string   "med_relief"
    t.string   "steroid_response"
    t.string   "intermittent_symp"
    t.string   "cont_w_int_excb"
    t.string   "high_ige"
    t.string   "skin_allergy_hist"
    t.string   "eczema_hist"
    t.string   "conjunctiv_hist"
    t.string   "drug_allergy_hist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pdads", ["patient_id"], name: "index_pdads_on_patient_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",               default: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "lastlogin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "visits", force: true do |t|
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "wellness"
    t.string   "prob_since"
    t.string   "doct_since"
    t.string   "admits_since"
    t.string   "new_issues"
    t.string   "side_effects"
    t.string   "med_frequency"
    t.date     "visit_date"
    t.integer  "act"
    t.integer  "cat"
    t.integer  "pild"
    t.string   "pft"
  end

  add_index "visits", ["created_at"], name: "index_visits_on_created_at", using: :btree
  add_index "visits", ["patient_id"], name: "index_visits_on_patient_id", using: :btree

end
