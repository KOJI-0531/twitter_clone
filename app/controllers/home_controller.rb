class HomeController < ApplicationController
  def top
    @ps = Post.all
  end

  def about
  end
  
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/")
  end
end
