class LayoutPublicDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :layouts, :is_public, false
  end
end
