class UserMailer < ApplicationMailer
  default from: 'bill@billhorst.com'

  def contact_form(email, name, message)
    @message = message
    mail(from: email, to: 'bill@billhorst.com', subject: "A new contact form message from #{name}")
  end

  def welcome(email)
    @appname = 'Chamisama'
    mail(to: email, subject: "Welcome to #{@appname}!")
  end

  def payment_processed(price, product, email)
    @appname = 'Chamisama'
    @price = price
    @product = product
    mail(to: email, subject: 'Thanks!')
  end
end
