# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_29_212510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
  end

  create_table "authors_books_models", id: false, force: :cascade do |t|
    t.bigint "author_id"
    t.bigint "book_id"
    t.index ["author_id"], name: "index_authors_books_models_on_author_id"
    t.index ["book_id"], name: "index_authors_books_models_on_book_id"
  end

  create_table "book_shops", force: :cascade do |t|
    t.string "book_shop_name"
  end

  create_table "books", force: :cascade do |t|
    t.string "book_title"
    t.bigint "publisher_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "books_book_shops_models", id: false, force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "book_shop_id"
    t.index ["book_id"], name: "index_books_book_shops_models_on_book_id"
    t.index ["book_shop_id"], name: "index_books_book_shops_models_on_book_shop_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "publisher_name"
  end

  create_table "publishers_book_shops_models", id: false, force: :cascade do |t|
    t.bigint "publisher_id"
    t.bigint "book_shop_id"
    t.index ["book_shop_id"], name: "index_publishers_book_shops_models_on_book_shop_id"
    t.index ["publisher_id"], name: "index_publishers_book_shops_models_on_publisher_id"
  end

end
