class RemoveCreatedAtFromSectypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :sectypes, :created_at, :datetime
  end
end
