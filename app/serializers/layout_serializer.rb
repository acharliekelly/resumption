class LayoutSerializer < ActiveModel::Serializer
  attributes :id, :layout_name, :is_public
  has_one :template
  has_one :user
end
