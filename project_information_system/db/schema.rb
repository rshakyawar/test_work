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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101215071943) do

  create_table "comments", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "project_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_images", :force => true do |t|
    t.integer  "employee_id"
    t.string   "employee_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "employee_projects", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "user_name"
    t.string   "password"
    t.string   "employee_name"
    t.string   "employee_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employee_type"
  end

  create_table "project_daily_descriptions", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "project_id"
    t.date     "emp_status_date"
    t.string   "emp_project_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.date     "project_date"
    t.string   "project_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "query_answers", :force => true do |t|
    t.integer  "query_question_id"
    t.string   "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "query_questions", :force => true do |t|
    t.string   "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
