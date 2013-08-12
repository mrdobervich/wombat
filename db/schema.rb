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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130812161826) do

  create_table "assessments", :force => true do |t|
    t.integer  "grader_id"
    t.integer  "student_id"
    t.integer  "completed_assignment_id"
    t.text     "comment"
    t.boolean  "official"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "assessments", ["completed_assignment_id"], :name => "index_assessments_on_completed_assignment_id"
  add_index "assessments", ["grader_id"], :name => "index_assessments_on_grader_id"
  add_index "assessments", ["student_id"], :name => "index_assessments_on_student_id"

  create_table "assignments", :force => true do |t|
    t.string   "category"
    t.integer  "course_id"
    t.integer  "task_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.datetime "due_date"
  end

  add_index "assignments", ["course_id"], :name => "index_assignments_on_course_id"
  add_index "assignments", ["task_id"], :name => "index_assignments_on_task_id"

  create_table "calendar_entries", :force => true do |t|
    t.integer  "course_id"
    t.date     "date"
    t.text     "body"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "completed_assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "completed_task_id"
    t.integer  "assignment_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "current"
  end

  add_index "completed_assignments", ["assignment_id"], :name => "index_completed_assignments_on_assignment_id"
  add_index "completed_assignments", ["completed_task_id"], :name => "index_completed_assignments_on_completed_task_id"
  add_index "completed_assignments", ["user_id"], :name => "index_completed_assignments_on_user_id"

  create_table "completed_tasks", :force => true do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.integer  "revision"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "solution"
  end

  add_index "completed_tasks", ["task_id"], :name => "index_completed_tasks_on_task_id"
  add_index "completed_tasks", ["user_id"], :name => "index_completed_tasks_on_user_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "period"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "featured_codes", :force => true do |t|
    t.string   "title"
    t.string   "short_task_description"
    t.text     "task_description"
    t.string   "author"
    t.text     "code"
    t.integer  "course_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.text     "commentary"
  end

  add_index "featured_codes", ["course_id"], :name => "index_featured_codes_on_course_id"

  create_table "mastery_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "description_link"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "body"
    t.string   "from"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "messages", ["user_id"], :name => "index_messages_on_user_id"

  create_table "objective_results", :force => true do |t|
    t.integer  "objective_id"
    t.integer  "assessment_id"
    t.integer  "student_id"
    t.integer  "mastery_category_id"
    t.integer  "score"
    t.text     "comment"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "objective_results", ["assessment_id"], :name => "index_objective_results_on_assessment_id"
  add_index "objective_results", ["mastery_category_id"], :name => "index_objective_results_on_mastery_category_id"
  add_index "objective_results", ["objective_id"], :name => "index_objective_results_on_objective_id"
  add_index "objective_results", ["student_id"], :name => "index_objective_results_on_student_id"

  create_table "objectives", :force => true do |t|
    t.integer  "assignment_id"
    t.integer  "mastery_category_id"
    t.text     "description"
    t.string   "objective_type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "objectives", ["assignment_id"], :name => "index_objectives_on_assignment_id"
  add_index "objectives", ["mastery_category_id"], :name => "index_objectives_on_mastery_category_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "submitted_assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "assignment_id"
    t.integer  "revision"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "submitted_assignments", ["assignment_id"], :name => "index_submitted_assignments_on_assignment_id"
  add_index "submitted_assignments", ["user_id"], :name => "index_submitted_assignments_on_user_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.string   "short_description"
    t.text     "long_description"
    t.integer  "difficulty"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "hidden"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.integer  "course_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
