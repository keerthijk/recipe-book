module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new()
    markdown = Redcarpet::Markdown.new(renderer, autolink: true)
    markdown.render(text.to_s).html_safe
  end
end
