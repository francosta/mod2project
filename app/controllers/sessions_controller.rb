class SessionsController < ApplicationController

    def new
      if session[:user_id]
        redirect_to(posts_path)
      end
    end
  
    def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       flash[:success] = "Successfully Logged In!"
       redirect_to user_path(user.id)
      else
       flash[:warning] = "Incorrect username or password"
       redirect_to(login_path)
      end
    end
  
    def destroy
       session[:user_id] = nil
       flash[:success] = "You have successfully logged out."
       redirect_to(posts_path)
    end
  
end
  