class UserMailer < ApplicationMailer
  default from: 'notifications@library.com'
  def notification_email(user)
    @user = user
    @url  = 'https://morning-thicket-62063.herokuapp.com/'
    mail(to: @user.email, subject: 'Library Room Booking Notification')
  end
  def invite_email(user,reservation)
    @user = user
    @reservation = reservation
    @url  = 'https://morning-thicket-62063.herokuapp.com/'
    mail(to: @user, subject: 'Library Room Booking Notification')
  end
end