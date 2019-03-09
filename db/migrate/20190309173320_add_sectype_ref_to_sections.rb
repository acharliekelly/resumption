class AddSectypeRefToSections < ActiveRecord::Migration[5.2]
  def change
    add_reference :sections, :sectype, foreign_key: true
  end
end
