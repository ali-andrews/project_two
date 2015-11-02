class HomeController < ApplicationController
  def index
  @recent_posts = Post.last(10)
  end
end
