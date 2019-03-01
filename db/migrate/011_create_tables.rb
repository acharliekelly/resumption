# frozen_string_literal: true

# create tables with references to users table (which is created first),
# but no other foreign keys

ActiveRecord::Schema.define(version: 2) do

  enable_extension "plpgsql"

  create_table "contact_info", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "first_name", null: false
    t.text "last_name", null: false
    t.text "address1", null: false
    t.text "address2", null: true
    t.text "city", null: false
    t.text "state", null: false
    t.text "phone", null: false
    t.text "email", null: false
    t.index ["user_id"], name: "index_contact_info_on_user_id"
  end

  create_table "objectives", force: :cascade do |t|
    t.integer 'user_id', null: false
    t.text 'objective', null: true
    t.index ["user_id"], name: "index_objectives_on_user_id"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.integer 'user_id', null: false
    t.text 'company', null: false
    t.text 'location', null: false
    t.date 'start_date', null: false
    t.date 'end_date', null: true
    t.text 'exp_description', null: true
    t.index ["user_id"], name: "index_workexp_on_user_id"
  end

  create_table "accomplishments", force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'acc_type', null: false
    t.integer 'experience_id', null: false
    t.text 'acc_description', null: false
    t.index ["user_id"], name: "index_accomp_on_user_id"
  end

  create_table "education_experiences", force: :cascade do |t|
    t.integer 'user_id', null: false
    t.date 'start_date', null: false
    t.date 'end_date', null: true
    t.text 'school_name', null: false
    t.text 'location', null: false
    t.text 'edu_description', null: true
    t.index ["user_id"], name: "index_edu_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer 'user_id', null: false
    t.text 'project_name', null: false
    t.date 'completed_on', null: true
    t.text 'project_url', null: true
    t.text 'project_description', null: true
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

end
