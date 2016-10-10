class UserMailer < ApplicationMailer
  default from: 'notifications@library.com'
 
  def invite_email(emails,reservation)
    @reservation = reservation
    @url  = 'http://www.google.com/'
    mail(to: emails, subject: 'Library Reservation')
  end
end
