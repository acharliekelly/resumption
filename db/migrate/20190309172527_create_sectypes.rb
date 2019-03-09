class CreateSectypes < ActiveRecord::Migration[5.2]
  def change
    create_table :sectypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
