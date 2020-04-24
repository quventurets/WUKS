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

ActiveRecord::Schema.define(version: 2020_04_23_135845) do

  create_table "comps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "area"
    t.string "scale"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employees"
    t.string "address"
    t.integer "founded_year"
    t.integer "founded_month"
    t.text "what"
    t.text "why"
    t.text "how"
    t.text "mission"
    t.text "occupation"
    t.text "want"
    t.text "comment"
    t.string "url"
    t.integer "has_original_format"
    t.text "original_text"
  end

  create_table "departments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "univ_name"
    t.string "faculty_name"
    t.string "name"
    t.string "date_general"
    t.string "date_recomend"
    t.string "date_general_pass"
    t.string "date_recomend_pass"
    t.boolean "math"
    t.boolean "english"
    t.boolean "physics"
    t.boolean "chemistry"
    t.boolean "biology"
    t.boolean "special"
    t.boolean "paper"
    t.boolean "integration"
    t.boolean "practical"
    t.boolean "external_english"
    t.boolean "interview"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "place"
    t.datetime "date"
    t.string "pref"
    t.string "event_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "outline"
    t.text "otherinfo"
    t.string "startTime"
    t.string "finishTime"
    t.string "guestComp"
    t.string "target"
    t.string "form"
  end

  create_table "faculties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "s_name"
    t.string "f_name"
    t.string "date_general"
    t.boolean "is_there_recomend"
    t.string "date_recomend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "department"
    t.string "url"
    t.string "date_general_pass"
    t.string "date_recomend_pass"
    t.boolean "is_there_general"
    t.string "faculty_type"
    t.string "note"
  end

  create_table "kosens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "kosen_id"
    t.string "kosen_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "univs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date_general"
    t.string "date_recommend"
    t.float "date_number"
    t.string "location"
    t.integer "otherFac"
    t.integer "examtypes"
    t.string "rubi"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "kosen_id"
  end

end
