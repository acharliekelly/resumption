# frozen_string_literal: true

class SectionHtmlSerializer < ActiveModel::Serializer
  attributes :id, :name, :format, :html_content
  belongs_to :user
  has_one :sectype
  has_many :section_layouts
  def html_content
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown.render(:content)
  end
end
