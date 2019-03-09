class TemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :author_url, :content, :path
  has_many :layouts
end
