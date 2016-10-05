class LoginMailer < ApplicationMailer
  def notify_admin_login(user)
    @email = user.email
    @user = user
    mail to: "slfwalsh@gmail.com", subject: "#{user.email} just logged in"
  end
end
