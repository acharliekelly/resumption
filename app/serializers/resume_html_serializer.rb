class ResumeHtmlSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :format, :html_content
  belongs_to :user
  def html_content
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown.render(:content)
  end
end
