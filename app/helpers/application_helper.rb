module ApplicationHelper

  @@markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       :fenced_code_blocks => true,
                                       :disableindented_code_blocks => true,
                                       :superscript => true,
                                       :strikethrough => true,
                                       :highlight => true,
                                       :underline => true,
                                       :footnotes => true,
  )

  def markdown(text)
    return @@markdown.render(text).html_safe
  end

end
