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

ActiveRecord::Schema.define(version: 20180402095006) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pic_name"
    t.string "aihao"
    t.string "aichi"
    t.string "zayu"
    t.string "id_kari"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freepages", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.text "text"
    t.string "image_free_id"
    t.string "midashi_1"
    t.string "midashi_2"
    t.string "midashi_3"
    t.string "midashi_4"
    t.string "midashi_5"
    t.string "midashi_6"
    t.text "stext_1"
    t.text "stext_2"
    t.text "stext_3"
    t.text "stext_4"
    t.text "stext_5"
    t.text "stext_6"
    t.string "image_f2_1_id"
    t.string "image_f2_2_id"
    t.string "image_f2_3_id"
    t.string "image_f2_4_id"
    t.string "image_f2_5_id"
    t.string "image_f2_6_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "sex"
    t.string "company_name"
    t.string "address"
    t.string "tell"
    t.string "email"
    t.string "position"
    t.string "text"
    t.string "naiyou"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "category"
    t.string "company_name"
    t.string "company_name_kana"
    t.string "ad_image_id"
    t.string "key_word"
    t.string "url"
    t.string "ad_show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "category_ent"
    t.string "ad_name"
    t.text "ad_show_text"
    t.string "category_2"
    t.string "category_detail"
    t.string "category_detail_2"
  end

  create_table "prot_cates", force: :cascade do |t|
    t.integer "category_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "last_name"
    t.string "last_name_kana"
    t.string "first_name"
    t.string "first_name_kana"
    t.string "pic_name"
    t.string "company_name"
    t.string "company_name_kana"
    t.string "zip"
    t.string "address"
    t.string "tell"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
