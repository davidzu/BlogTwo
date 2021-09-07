class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@tags = Tag.all
  end

  def about
  end
end
