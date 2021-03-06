class AppMailer < ActionMailer::Base
  def send_welcome_email(user)
    @user = user
    mail to: user.email, from: 'info@duetoday.com', subject: 'Welcome to DueToday!'
  end

  def send_forgot_password(user)
    @user = user
    mail to: user.email, from: 'info@duetoday.com', subject: 'Please reset your password!'
  end
end
