class RenameSectionType < ActiveRecord::Migration[5.2]
  def change
    rename_column :sections, :type, :type_id
  end
end
