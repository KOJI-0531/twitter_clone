class SessionsController < ApplicationController
  def new
  end
  
 def create
    @user = User.find_by(email: params[:session][:email])
  if @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to root_path
    else
       @error_message = "メールアドレスまたはパスワードが間違っています"
      render :new
    end
  end
  
 def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end
end
