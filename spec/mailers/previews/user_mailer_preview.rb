# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def payment_mailer
    @payment = Payment.first
    @subscription = @payment.user.all_follows.first 
    UserMailer.with(payment: Payment.first).payment_mailer
  end
end
