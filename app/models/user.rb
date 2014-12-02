class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :email, :password, presence: true
  has_many :user_teams
  has_many :teams, through: :user_teams

  def all_foods
    self.user_teams.map{|ut| ut.foods}.flatten
  end

  def foods(team_id)
    self.user_teams.where(team_id: team_id)[0].foods
  end
end
