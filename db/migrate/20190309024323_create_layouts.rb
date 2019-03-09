class CreateLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :layouts do |t|
      t.string :layout_name
      t.references :template, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :is_public

      t.timestamps
    end
  end
end
