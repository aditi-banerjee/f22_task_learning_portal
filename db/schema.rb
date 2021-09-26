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

ActiveRecord::Schema.define(version: 2021_09_26_073233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.integer "topic_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_chapters_on_topic_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "exam_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mcq_options", force: :cascade do |t|
    t.integer "question_id"
    t.string "option"
    t.boolean "is_correct", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_mcq_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "chapter_id"
    t.string "question"
    t.text "description"
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_questions_on_chapter_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "exam_id"
    t.string "subject_name"
    t.string "subject_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_subjects_on_exam_id"
  end

  create_table "topics", force: :cascade do |t|
    t.integer "subject_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_topics_on_subject_id"
  end

  create_table "user_results", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.integer "mcq_option_id"
    t.boolean "is_skipped", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mcq_option_id"], name: "index_user_results_on_mcq_option_id"
    t.index ["question_id"], name: "index_user_results_on_question_id"
    t.index ["user_id"], name: "index_user_results_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
