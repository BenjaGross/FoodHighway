class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, :password, presence: true
  has_many :user_teams
  has_many :teams, through: :user_teams
end
