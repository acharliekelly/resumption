class AddColumnToTemplates < ActiveRecord::Migration[5.2]
  def change
    add_column :templates, :path, :string
  end
end
