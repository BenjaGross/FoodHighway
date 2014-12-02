class UserTeamsController < ApplicationController
  def create
  	UserTeam.create(team_id: params[:user_team][:team_id], user_id: current_user.id)
    redirect_to current_user
  end
end