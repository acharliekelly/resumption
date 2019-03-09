class RemoveModifiedAtFromSectypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :sectypes, :modified_at, :datetime
  end
end
