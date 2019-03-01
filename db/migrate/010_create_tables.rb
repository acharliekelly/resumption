# frozen_string_literal: true

# create tables with either no foreign keys (ie no dependencies)

ActiveRecord::Schema.define(version: 2) do

  enable_extension "plpgsql"

  create_table "skills", force: :cascade do |t|
    t.text 'skill_name', null: false
    t.integer 'skill_type', null: false
  end

  create_table "contact_url_types", force: :cascade do |t|
    t.text 'type_name', null: false
    t.text 'url_base', null: true
  end

end
