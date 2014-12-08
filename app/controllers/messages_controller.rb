class MessagesController < ApplicationController
  
  def create
    UserMailer.email_team(current_user, Team.find(params[:team_id]), params[:subject], params[:body]).deliver
    redirect_to Team.find(params[:team_id])
  end

  def create_city_harvest
    dates = []
    dates[0] = Hash.new
    dates[0][:month] = params[:dates_0_month]
    dates[0][:day] = params[:dates_0_day]
    dates[0][:year] = params[:dates_0_year]
    dates[1] = Hash.new
    dates[1][:month] = params[:dates_1_month]
    dates[1][:day] = params[:dates_1_day]
    dates[1][:year] = params[:dates_1_year]
    dates[2] = Hash.new
    dates[2][:month] = params[:dates_2_month]
    dates[2][:day] = params[:dates_2_day]
    dates[2][:year] = params[:dates_2_year]

    UserMailer.test_email(current_user, Team.find(params[:team_id]), dates, params[:phone_number]).deliver
    redirect_to current_user
  end

  def preview
    @team = Team.find(params[:id])
    @subject = params[:subject]
    @body = params[:body]
    render :preview
  end


end