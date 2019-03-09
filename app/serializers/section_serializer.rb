# frozen_string_literal: true

class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :format
  belongs_to :user
  belongs_to :sectype
end
