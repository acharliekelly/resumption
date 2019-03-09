# frozen_string_literal: true

class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
  belongs_to :user
  belongs_to :sectype
end
