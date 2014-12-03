class UserMailer < ActionMailer::Base
  default from: "fooddrivecentral@gmail.com"


  def test_email(user, team)
    @user = user
    @team = team
    mail(to: "amanda.chang10@gmail.com", subject: "Food Drive Logistics", reply_to: @user.email)
  end
end
