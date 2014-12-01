class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	new_user = User.create(user_params)
  	redirect_to new_user
  end

  private

  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
  	end
end
