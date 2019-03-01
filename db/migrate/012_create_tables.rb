# frozen_string_literal: true

# create tables with references to previous tables

ActiveRecord::Schema.define(version: 2) do

  enable_extension 'plpgsql'

  create_table 'resumes', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.text 'ref_title', null: false
    t.integer 'contact_id', null: false
    t.integer 'objective_id', null: false
    t.timestamp 'created_on', null: false
    t.timestamp 'last_modified', null: false
    t.index ['user_id'], name: 'index_resume_on_user_id'
    t.index ['contact_id'], name: 'index_resume_on_contact_id'
    t.index ['objective_id'], name: 'index_resume_on_obj_id'
  end

end
