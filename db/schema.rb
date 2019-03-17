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

ActiveRecord::Schema.define(version: 2019_03_17_183304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "hairstyle"
    t.datetime "date"
    t.time "start"
    t.integer "duration", default: 90
    t.string "status", default: "pending"
    t.float "service_total"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stylist_id"
    t.index ["stylist_id"], name: "index_appointments_on_stylist_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "message"
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "image"
    t.bigint "gallery_category_id"
    t.string "gallerable_type"
    t.bigint "gallerable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gallerable_type", "gallerable_id"], name: "index_galleries_on_gallerable_type_and_gallerable_id"
    t.index ["gallery_category_id"], name: "index_galleries_on_gallery_category_id"
  end

  create_table "gallery_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hair_cards", force: :cascade do |t|
    t.boolean "suffered_from_hair_loss", default: false
    t.boolean "been_diagnosed_with_alopecia", default: false
    t.boolean "take_any_medication", default: false
    t.boolean "suffer_from_psoriasis_to_the_scalp", default: false
    t.boolean "suffer_from_ezcema_to_the_scalp", default: false
    t.boolean "have_a_sensitive_scalp", default: false
    t.boolean "any_known_allergies", default: false
    t.text "which_ones", default: "unanswered"
    t.boolean "frequently_swim_or_go_to_the_gym", default: false
    t.boolean "currently_have_colour_in_your_hair", default: false
    t.text "last_time_colored", default: "unanswered"
    t.boolean "used_hair_extensions_before", default: false
    t.text "which_type_did_you_use", default: "unanswered"
    t.boolean "have_a_perm_or_relaxer", default: false
    t.text "last_time_you_had_a_relaxer", default: "unanswered"
    t.text "wash_frequency", default: "unanswered"
    t.string "hair_type", default: "regular"
    t.string "hair_is", default: "normal"
    t.string "length", default: "unknown"
    t.boolean "been_pregnant_in_the_last_6_months", default: false
    t.text "which_method", default: "unanswered"
    t.bigint "user_id"
    t.bigint "hair_personality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stylist_id"
    t.index ["hair_personality_id"], name: "index_hair_cards_on_hair_personality_id"
    t.index ["stylist_id"], name: "index_hair_cards_on_stylist_id"
    t.index ["user_id"], name: "index_hair_cards_on_user_id"
  end

  create_table "hair_personalities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.bigint "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_messages_on_salon_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "quantity"
    t.float "cost"
    t.bigint "product_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.string "email"
    t.string "home"
    t.string "mobile"
    t.string "street_1"
    t.string "street_2", default: "none"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.string "street_1"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.string "phone"
    t.string "email"
    t.string "web"
    t.string "business_certification"
    t.string "tax_id"
    t.string "image"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
    t.time "mon"
    t.time "tue"
    t.time "wed"
    t.time "thu"
    t.time "fri"
    t.time "sat"
    t.time "sun"
    t.bigint "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stylist_id"
    t.index ["salon_id"], name: "index_schedules_on_salon_id"
    t.index ["stylist_id"], name: "index_schedules_on_stylist_id"
  end

  create_table "service_products", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "service_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_service_products_on_product_id"
    t.index ["service_type_id"], name: "index_service_products_on_service_type_id"
  end

  create_table "service_requests", force: :cascade do |t|
    t.bigint "appointment_id"
    t.bigint "service_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_service_requests_on_appointment_id"
    t.index ["service_type_id"], name: "index_service_requests_on_service_type_id"
  end

  create_table "service_types", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration", default: 90
    t.index ["service_id"], name: "index_service_types_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.bigint "salon_id"
    t.bigint "stylist_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_services_on_salon_id"
    t.index ["stylist_info_id"], name: "index_services_on_stylist_info_id"
  end

  create_table "stylist_infos", force: :cascade do |t|
    t.string "certification"
    t.string "organization"
    t.boolean "license", default: false
    t.string "license_id", default: "none"
    t.date "renewal"
    t.text "about_summary"
    t.string "webpic", default: "https://cdn5.vectorstock.com/i/1000x1000/30/59/black-women-avatar-vector-21843059.jpg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stylist_id"
    t.integer "hours_completed", default: 0
    t.index ["stylist_id"], name: "index_stylist_infos_on_stylist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "role", default: "client"
    t.string "image", default: "https://cdn5.vectorstock.com/i/1000x1000/30/59/black-women-avatar-vector-21843059.jpg"
    t.bigint "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_users_on_salon_id"
  end

  add_foreign_key "appointments", "users"
  add_foreign_key "appointments", "users", column: "stylist_id"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "galleries", "gallery_categories"
  add_foreign_key "hair_cards", "hair_personalities"
  add_foreign_key "hair_cards", "users"
  add_foreign_key "hair_cards", "users", column: "stylist_id"
  add_foreign_key "messages", "salons"
  add_foreign_key "posts", "users"
  add_foreign_key "products", "product_categories"
  add_foreign_key "profiles", "users"
  add_foreign_key "schedules", "salons"
  add_foreign_key "schedules", "users", column: "stylist_id"
  add_foreign_key "service_products", "products"
  add_foreign_key "service_products", "service_types"
  add_foreign_key "service_requests", "appointments"
  add_foreign_key "service_requests", "service_types"
  add_foreign_key "service_types", "services"
  add_foreign_key "services", "salons"
  add_foreign_key "services", "stylist_infos"
  add_foreign_key "stylist_infos", "users", column: "stylist_id"
  add_foreign_key "users", "salons"
end
