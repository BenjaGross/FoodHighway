class MessagesController < ApplicationController
  
  def create
    UserMailer.email_team(current_user, Team.find(params[:team_id]), params[:subject], params[:body]).deliver
    redirect_to Team.find(params[:team_id])
  end


end