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
    session[:user_id] = @user.id
    redirect_to("/users/#{@user.id}")
  end
  
  def login_form
  end
    
 
  
  private
    def user_params
      return params.require(:user).permit(:email,:password,:password_confirmation)
    end
end
