class SessionsController < ApplicationController
  def new
  end

  def create
    user = BlogUser.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/blog' # will be changed to admin
    else
      redirect_to login_url, alert: "Incorrect Login"
    end
  end

  def destroy
  end
end
