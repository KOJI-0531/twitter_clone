class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
     @user = User.find_by(id: params[:id])
  end
 
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to("/users/#{@user.id}")
  end
  
  def login_form
  end
    
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
  if @user
    session[:user_id] = @user.id
    flash[:notice] = "ログインしました"
    redirect_to("/posts/index")
  else
     @error_message = "メールアドレスまたはパスワードが間違っています"
     @email = params[:email]
     @password = params[:password]
      
    render("users/login_form")
  end
end
  
  private
    def user_params
      return params.require(:user).permit(:email,:password,:password_confirmation)
    end
end
