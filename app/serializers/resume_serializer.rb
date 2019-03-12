class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :name, :format, :content, :editable
  belongs_to :user
  def editable
    scope == object.user
  end
end
