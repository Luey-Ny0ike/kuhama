class UserMailer < ApplicationMailer

  def payment_mailer
    @payment = params[:payment]
    @subscription = @payment.user.all_follows.first 
    mail(to: 'nyoikelewis@gmail.com', subject: 'New Subscription Paymnet')
  end
end
