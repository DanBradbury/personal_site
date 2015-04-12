class BlogsController < ApplicationController
  def index
    @posts ||= Blog.all
  end
end

