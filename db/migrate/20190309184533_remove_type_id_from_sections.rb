class RemoveTypeIdFromSections < ActiveRecord::Migration[5.2]
  def change
    remove_column :sections, :type_id, :integer
  end
end
