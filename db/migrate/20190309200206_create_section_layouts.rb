class CreateSectionLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :section_layouts do |t|
      t.references :section, foreign_key: true
      t.references :layout, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
