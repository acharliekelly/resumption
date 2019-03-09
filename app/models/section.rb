class Section < ApplicationRecord
  belongs_to :sectype
  belongs_to :user
  has_many :section_layouts
end
