class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :type_id, :content
end
