class Team < ActiveRecord::Base
  has_many :user_teams
  has_many :users, through: :user_teams

  def foods
    self.user_teams.map{|ut| ut.foods}.flatten
  end
end
