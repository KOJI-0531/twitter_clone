class HomeController < ApplicationController
  def top
    @post = #<Post id: nil, content: nil, created_at: nil, updated_at: nil> 
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
