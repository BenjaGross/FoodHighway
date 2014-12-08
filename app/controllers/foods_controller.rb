class FoodsController < ApplicationController
  
  def save_my_previous_url
    # session[:previous_url] is a Rails built-in variable to save last url.
    session[:my_previous_url] = URI(request.referer).path
  end

  def new
    @food = Food.new
  end 

  def create
    @new_food = Food.create(food_params)
    unit = params[:units]
    weight = params[:food][:weight].to_i
    convert_params(unit, weight)
    @new_food.user_team_id = UserTeam.find_by(user_id: current_user.id, team_id: params[:team_id]).id
    @new_food.save
    redirect_to current_user
  end

  def edit
    save_my_previous_url
    @food = Food.find(params[:id])
  end

  def update
    @updated_food = Food.find(params[:id])
    @updated_food.update(food_params)
    redirect_to session[:my_previous_url]
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    # redirect_to current_user
  end

  private
    def food_params
      params.require(:food).permit(:name, :weight, :food_group_id)
    end

    def convert_params(unit, weight)
      if unit == "g"
        weight *= 0.00220462
        params[:food][:weight] = weight.to_s
      elsif unit == "oz"
        weight *= 0.0625
        params[:food][:weight] = weight.to_s
      end
    end
end
