class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :name, :format, :content, :editable
  has_one :user
  def editable
    scope == object.user
  end
end
