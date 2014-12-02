class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    new_team = Team.create(team_params)
    redirect_to new_team
  end

  def show
    @team = Team.find(params[:id])
  end

  private
    def team_params
      params.require(:team).permit(:name, :goal)
    end
end
