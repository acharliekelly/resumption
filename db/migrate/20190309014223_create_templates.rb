class CreateTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :templates do |t|
      t.string :name
      t.string :author
      t.string :author_url
      t.text :content

      t.timestamps
    end
  end
end
