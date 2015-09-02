class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authorize


  protected
  def authorize
      unless BlogUser.find_by_id(session[:user_id]) || BlogUser.count == 0
        redirect_to "/login", notice: "Must be an admin to access this page"
      end
  end
  
end
