# Preview all emails at http://localhost:3000/rails/mailers/subscriber_main
class SubscriberMainPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/subscriber_main/recieved
  def recieved
    SubscriberMain.recieved
  end

  # Preview this email at http://localhost:3000/rails/mailers/subscriber_main/new
  def new
    SubscriberMain.new
  end

end
