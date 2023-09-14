class HomeController < ApplicationController
  def top
    @post = #<Post id: nil, content: nil, created_at: nil, updated_at: nil> 
    # @ps = Post.all
    @ps = Post.where(del_flg: false).order(created_at: :desc)
    
  end

  def about
  end
  
  def create
    @post = Post.new(content: params[:post][:content])
    @post.save
    redirect_to("/")
  end
end
