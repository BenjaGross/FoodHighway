class UserMailer < ActionMailer::Base
  default from: "fooddrivecentral@gmail.com"


  def test_email(user)
    @user = user
    mail(to: "amanda.chang10@gmail.com", subject: "Food Drive Logistics", reply_to: @user.email)
  end
end
