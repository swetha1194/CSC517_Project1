class UserMailer < ApplicationMailer
  default from: 'notifications@library.com'
 
  def invite_email(email,reservation)
    @reservation = reservation
    @url  = 'http://example.com/login'
    mail(to: email, subject: 'Library Reservation')
  end
end
