class ConnectController < ApplicationController
  def index
  end
  
  
  def subscribe
    unless Subscriber.find_by_email(params[:email])
      
      @subscriber = Subscriber.new(email: params[:email])
      respond_to do |format|
        if @subscriber.save
          SubscriberMain.recieved(params[:email]).deliver
          format.html {redirect_to '/connect', notice: "subscribed"}
        end
      end
    else
      flash[:notice] = "Email Already Subscribed"
    end
  end
end
