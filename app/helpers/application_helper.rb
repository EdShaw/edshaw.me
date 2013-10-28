module ApplicationHelper

  @@markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions={})

  def markdown(text)
    return @@markdown.render(text).html_safe
  end

end
