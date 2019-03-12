class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.string :name, null: false
      t.string :format
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
