class UserMailer < ApplicationMailer
  default from: 'notifications@libraryroom7.com'
  def notification_email(member)
    @member = member
    @url  = 'https://morning-thicket-62063.herokuapp.com/'
    mail(to: @member.email, subject: 'Library Room Booking Notification')
  end
  def invite_email(member,reservation)
    @member = member
    @reservation = reservation
    @url  = 'https://morning-thicket-62063.herokuapp.com/'
    mail(to: @member, subject: 'Library Room Booking Notification')
  end
end