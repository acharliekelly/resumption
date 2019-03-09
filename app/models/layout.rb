class Layout < ApplicationRecord
  belongs_to :template
  belongs_to :user
  has_many :section_layouts, dependent: :destroy
  has_many :sections, through: :section_layouts
end
