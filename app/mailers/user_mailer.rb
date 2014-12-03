class UserMailer < ActionMailer::Base
  default from: "fooddrivecentral@gmail.com"


  def test_email(user, team, dates, phone_number)
    @user = user
    @team = team
    @dates = dates
    @phone_number = phone_number
    mail(to: "amanda.chang10@gmail.com", subject: "Food Drive Logistics", reply_to: @user.email)
  end
end
