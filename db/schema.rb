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

ActiveRecord::Schema.define(version: 20180331040904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "contact_number"
    t.string "alternate_number"
    t.decimal "amount_pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "booking_time"
    t.bigint "customer_id"
    t.string "ride_status"
    t.string "contact_number"
    t.string "alternate_number"
    t.string "todo_action"
    t.datetime "todo_datetime"
    t.string "referal_enterprise"
    t.string "referal_name"
    t.string "executive"
    t.datetime "requirement_start"
    t.datetime "requirement_end"
    t.string "duration"
    t.bigint "vehicle_id"
    t.string "vehicle_number"
    t.string "pickup_car"
    t.string "pickup_poc_name"
    t.string "pickup_poc_contact"
    t.string "pickup_location"
    t.string "pickup_landmark"
    t.string "drop_car"
    t.string "drop_customer"
    t.string "drop_location"
    t.string "drop_landmark"
    t.string "drop_poc_name"
    t.string "drop_poc_contact"
    t.text "purpose"
    t.text "additional_requirement"
    t.string "plan_name"
    t.string "plan_min_hr"
    t.decimal "plan_min_amount"
    t.string "plan_extra_hr"
    t.decimal "plan_additional_charges"
    t.string "plan_commute_charge_km"
    t.decimal "plan_commute_charge_amount"
    t.decimal "driver_food_accomodation"
    t.text "driver_text_info"
    t.string "ride_start_point"
    t.datetime "ride_reporting_time"
    t.datetime "ride_start"
    t.datetime "ride_end"
    t.string "ride_duration"
    t.string "ride_touch_points_location"
    t.string "ride_end_point"
    t.integer "ride_no_of_passengers"
    t.bigint "driver_id"
    t.string "ride_agency"
    t.string "ride_driver_transport_start_medium"
    t.decimal "ride_driver_transport_start_amount"
    t.string "ride_driver_transport_drop_medium"
    t.decimal "ride_driver_transport_drop_amount"
    t.string "on_ride_duration"
    t.decimal "on_ride_amount"
    t.string "pre_ride_duration"
    t.decimal "pre_ride_duration_amount"
    t.string "pre_ride_distance"
    t.decimal "pre_ride_distance_amount"
    t.string "post_ride_duration"
    t.decimal "post_ride_duration_amount"
    t.string "post_ride_distance"
    t.decimal "post_ride_distance_amount"
    t.decimal "food_charges"
    t.decimal "accomodation_charges"
    t.decimal "toll_parking_charges"
    t.decimal "other_charges"
    t.decimal "tip_charges"
    t.decimal "total_waiver"
    t.decimal "clap_waiver"
    t.decimal "net_billing"
    t.string "payment_collected_by"
    t.decimal "collected_from_customer"
    t.decimal "expense"
    t.decimal "driver_expense"
    t.decimal "after_expense_trip"
    t.decimal "clap_expenses"
    t.decimal "agency_share"
    t.decimal "driver_payment"
    t.decimal "clap_share"
    t.decimal "balance"
    t.string "collection_status"
    t.string "feedback_customer"
    t.string "feedback_driver"
    t.string "suggestions_customer"
    t.string "suggestions_driver"
    t.string "insights"
    t.string "todo"
    t.text "other_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ride_type"
    t.decimal "discount"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["driver_id"], name: "index_bookings_on_driver_id"
    t.index ["vehicle_id"], name: "index_bookings_on_vehicle_id"
  end

  create_table "customer_settlements", force: :cascade do |t|
    t.bigint "customer_id"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id"
    t.index ["customer_id"], name: "index_customer_settlements_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "contact_number"
    t.string "alternate_number"
    t.string "profession"
    t.string "experience"
    t.string "enterprise"
    t.integer "age"
    t.string "sex"
    t.string "refferal_type"
    t.string "refferal"
    t.string "executive"
    t.string "email"
    t.string "vehicle_kind"
    t.string "vehicle_no"
    t.string "vehicle_brand"
    t.string "vehicle_model"
    t.string "vehicle_color"
    t.string "vehicle_gear_type"
    t.string "vehicle_no_of_gears"
    t.string "vehicle_other"
    t.string "cab_name"
    t.string "cab_agent"
    t.string "cab_rate"
    t.string "cab_total_distance"
    t.string "cab_total_fare"
    t.string "cab_kind"
    t.string "cab_no"
    t.string "cab_brand"
    t.string "cab_model"
    t.string "cab_color"
    t.string "cab_gear_type"
    t.string "cab_no_of_gears"
    t.string "home_address"
    t.string "office_address"
    t.string "location"
    t.string "current_provider"
    t.string "requirement"
    t.string "remarks"
    t.string "review"
    t.string "rating"
    t.string "suggestions"
    t.string "insights"
    t.string "to_do"
    t.datetime "last_communication"
    t.datetime "call_back"
    t.string "status"
    t.string "discounts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vehicle_id"
    t.decimal "amount_pending"
    t.index ["vehicle_id"], name: "index_customers_on_vehicle_id"
  end

  create_table "driver_settlements", force: :cascade do |t|
    t.bigint "driver_id"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id"
    t.index ["driver_id"], name: "index_driver_settlements_on_driver_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "old_agency"
    t.string "enrollment_status"
    t.string "reference"
    t.integer "age"
    t.string "native"
    t.string "location"
    t.string "district"
    t.string "contact_number"
    t.string "alternate_contact"
    t.string "general_review"
    t.string "rating"
    t.text "notes"
    t.string "traits_responsible"
    t.string "traits_punctual"
    t.string "traits_behaviour"
    t.string "traits_driving"
    t.string "traits_route_knowledge"
    t.string "traits_cleanliness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plan"
    t.decimal "daily_charge"
    t.decimal "monthy_charge"
    t.bigint "slab_id"
    t.decimal "amount_pending"
    t.integer "agency_id"
    t.index ["slab_id"], name: "index_drivers_on_slab_id"
  end

  create_table "slabs", force: :cascade do |t|
    t.string "name"
    t.string "slab_1_from"
    t.string "slab_1_to"
    t.decimal "slab_1_amount"
    t.string "slab_2_from"
    t.string "slab_2_to"
    t.decimal "slab_2_amount"
    t.string "slab_3_from"
    t.string "slab_3_to"
    t.decimal "slab_3_amount"
    t.string "slab_4_from"
    t.string "slab_4_to"
    t.decimal "slab_4_amount"
    t.string "slab_5_from"
    t.string "slab_5_to"
    t.decimal "slab_5_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.string "category"
    t.string "gear"
    t.string "fuel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "drivers"
  add_foreign_key "bookings", "vehicles"
  add_foreign_key "customer_settlements", "drivers", column: "customer_id"
  add_foreign_key "driver_settlements", "drivers"
end
