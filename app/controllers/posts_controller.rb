class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    
    redirect_to("/")
  end
end
