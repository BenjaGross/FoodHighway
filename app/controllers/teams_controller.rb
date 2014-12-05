class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    new_team = Team.create(team_params)
    new_team.leader_id = current_user.id
    new_team.save

    dates = [params[:date1], params[:date2], params[:date3]]

    UserTeam.build_by_objects(new_team, current_user)

    UserMailer.test_email(current_user, new_team, dates, params[:phone_number]).deliver

    redirect_to current_user
  end

  def show
    @team = Team.find(params[:id])
  end

  def update
    params[:team][:food_ids].each do |food_id|
      if food_id != ""
        @food = Food.find(food_id)
        @group =  @food.food_group.category
        @food.update(verified: true)
      end
    end
  end

  private
    def team_params
      params.require(:team).permit(:name, :goal, :donation_location)
    end
end
