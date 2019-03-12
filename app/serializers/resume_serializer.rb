class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :name, :format, :content
  has_one :user
end
