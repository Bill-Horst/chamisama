class UserMailer < ApplicationMailer
  default from: "bill@billhorst.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,to: 'bill@billhorst.com.com',subject: "A new contact form message from #{name}")
  end

end
