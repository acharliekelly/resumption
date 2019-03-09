class UpdateSectypes < ActiveRecord::Migration[5.2]
  def change
    execute "UPDATE sections SET sectype_id = type_id + 1;"
  end
end
