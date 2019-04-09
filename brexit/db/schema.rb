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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_04_09_183240) do

  create_table "sales", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "SoldDate"
    t.integer "quantity"
=======
<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 0) do
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 7808edc23355a01709c449be8ce1afde31d813c4
ActiveRecord::Schema.define(version: 2019_04_09_180911) do

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "costprice"
    t.integer "saleprice"
    t.integer "weight"
    t.string "colour"
>>>>>>> 2e6c1c73a649b5a8116b408d50631ab7886a2480
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
  create_table "suppliers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
<<<<<<< HEAD
>>>>>>> bdb662b0324077acd13e4c604a2df65c9ce7bbd3
>>>>>>> 98d226d7ccc982d49a8250fc77c696881fb9e943

=======
>>>>>>> 7808edc23355a01709c449be8ce1afde31d813c4
>>>>>>> 2e6c1c73a649b5a8116b408d50631ab7886a2480
end
