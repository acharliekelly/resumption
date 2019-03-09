class TemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :author_url, :content
  has_many :layouts
end
