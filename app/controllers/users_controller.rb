class UsersController < ApplicationController
  def index
  	@users = User.all
    redirect_to current_user
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

  def pictures
    @user = User.find(params[:id])
  end

  def pictures_update
    @user = User.find(params[:id])
    @user.profile_url = params[:user][:profile_url]
    @user.cover_url = params[:user][:cover_url]
    @user.save(validate: false)

    redirect_to @user
  end

  private

  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
  	end

    def picture_params
      params[:user].permit(:profile_url, :cover_url)
    end
end
