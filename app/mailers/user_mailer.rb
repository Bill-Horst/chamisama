class UserMailer < ApplicationMailer
  default from: "bill@billhorst.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,to: 'bill@billhorst.com',subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Chamisama"
    mail(to: user.email, subject: "Welcome to #{@appname}!")
  end

end
