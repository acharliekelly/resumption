class LayoutSerializer < ActiveModel::Serializer
  attributes :id, :layout_name, :is_public
  has_one :template
  has_one :user
  has_many :section_layouts
  has_many :sections, through: :section_layouts
end
