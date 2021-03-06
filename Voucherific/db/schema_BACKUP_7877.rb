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

ActiveRecord::Schema.define(version: 2019_05_23_180037) do

<<<<<<< HEAD
  create_table "instances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
=======
  create_table "instances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
>>>>>>> development
    t.integer "voucher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.datetime "issued_on"
    t.datetime "redeemed_on"
    t.datetime "paid_on"
    t.bigint "customer_id"
    t.bigint "admin_id"
    t.bigint "vendor_id"
    t.index ["admin_id"], name: "index_instances_on_admin_id"
    t.index ["customer_id"], name: "index_instances_on_customer_id"
    t.index ["vendor_id"], name: "index_instances_on_vendor_id"
  end

  create_table "shops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "contact_phone"
    t.string "contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "dob"
    t.boolean "is_admin"
    t.boolean "is_vendor"
    t.bigint "shop_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
<<<<<<< HEAD
  end

  create_table "vendors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "contact_phone"
    t.string "contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
    t.index ["shop_id"], name: "index_users_on_shop_id"
>>>>>>> development
  end

  create_table "vouchers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.decimal "value", precision: 10
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "instances", "users", column: "admin_id"
  add_foreign_key "instances", "users", column: "customer_id"
  add_foreign_key "instances", "users", column: "vendor_id"
  add_foreign_key "users", "shops"
end
