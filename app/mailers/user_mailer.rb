class UserMailer < ApplicationMailer

  def payment_mailer
    mail(to: 'nyoikelewis@gmail.com', subject: 'New Subscription Paymnet')
  end
end
