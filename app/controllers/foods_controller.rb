class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @new_food = Food.create(food_params)
    @new_food.user_team_id = UserTeam.find_by(user_id: current_user.id, team_id: params[:team_id]).id
    @new_food.save
    redirect_to current_user
  end

  private
    def food_params
      params.require(:food).permit(:name, :weight, :food_group_id)
    end
end
