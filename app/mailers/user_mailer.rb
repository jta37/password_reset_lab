class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # this method and user is referenced from the Password controller
  def password_reset(user)
    @user = user
    mail :to=> @user.email, :subject => "Please reset your password"
  end

end
