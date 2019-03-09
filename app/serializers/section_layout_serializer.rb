class SectionLayoutSerializer < ActiveModel::Serializer
  attributes :id, :position
  belongs_to :section
  belongs_to :layout
end
