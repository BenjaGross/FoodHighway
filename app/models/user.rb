class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :email, presence: true
  # , :password
  # Extra Devise Validation
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :foods, through: :user_teams
  
  def all_foods
    self.foods
  end

  def verified_foods
    self.foods.where("verified = ?", true)
  end

  def verified_foods_by_team(team_id)
    self.user_teams.where(team_id: team_id)[0].foods.where("verified = ?", true)
  end

  def unverified_foods_by_team(team_id)
    self.user_teams.where(team_id: team_id)[0].foods.where("verified = ?", false)
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def current_weight
    current = self.verified_foods.map{|food| food.weight}.inject(:+)
    current != nil ? current : 0
  end

  def self.top_3_users
    sorted_users = User.all.sort{|x,y| y.current_weight <=> x.current_weight}
    sorted_users[0..2]
  end

end
