class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    user = BlogUser.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/admin'
    else
      redirect_to login_url, alert: "Incorrect Login"
    end
  end
  
  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  def destroy
  end
end
