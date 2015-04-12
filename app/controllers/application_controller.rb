class ApplicationController < ActionController::Base
  helper :all
  helper_method :md_render
  protect_from_forgery

  def initialize(*args)
    @renderer ||= Redcarpet::Render::HTML.new({})
    @markdown_renderer ||= Redcarpet::Markdown.new(@renderer, {})
  end

  def md_render(text)
    @markdown_renderer.render(text)
  end
end
