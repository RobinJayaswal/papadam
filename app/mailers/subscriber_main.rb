class SubscriberMain < ActionMailer::Base
  default from: "robinj.lincoln@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_main.recieved.subject
  #
  def recieved(email)
    @email = email
    mail to: @email, subject: "Thanks for subscribing!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_main.new.subject
  #
  def new
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
