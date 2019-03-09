class SectionLayoutSerializer < ActiveModel::Serializer
  attributes :id, :position
  has_one :section
  has_one :layout
end
