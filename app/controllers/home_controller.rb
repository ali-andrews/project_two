class HomeController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    if params[:q].present?
      @post = @q.result(distinct: true)
    
      #@posts.Post.all

    end
    @recent_posts = Post.last(3)
    end
  end


