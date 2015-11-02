class HomeController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    if params[:q].present?
      @post = @q.result(distinct: true)
    
      #@posts.Post.all

    end
    @recent_posts = Post.all.order(read_count: :desc).limit(3)
    end
  end


