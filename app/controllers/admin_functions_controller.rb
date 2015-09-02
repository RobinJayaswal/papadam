class AdminFunctionsController < ApplicationController
  
  def index
  end
  
  def create
    if params[:title] and !params[:subject]
      @post = Post.new(title: params[:title], content: params[:content])
      @post.save
      respond_to do |format|
        format.html {redirect_to '/admin', notice: "Blog post was created"}
      end
    elsif params[:subject] and !params[:title]
      Subscriber.all.each do |subscriber|
      SubscriberMain.new(params[:subject], params[:content], subscriber.email).deliver
      end
      
      respond_to do |format|
        format.html {redirect_to '/admin', notice: "Email was sent out"}
      end
    end
  end

end
