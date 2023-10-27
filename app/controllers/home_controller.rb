class HomeController < ApplicationController
  def top
    @post = #<Post id: nil, content: nil, created_at: nil, updated_at: nil> 
    # @ps = Post.all
    @ps = Post.where(del_flg: false).order(created_at: :desc)
    
  end

  def about
  end
  
  def create
    @current_user = " 値はあるよ"
    puts "@current_userの値は...#{@current_user}"
    @post = Post.new(content: params[:post][:content],user_id: session[:user_id])
    
    @post.save
    
    redirect_to("/")
  end
end
