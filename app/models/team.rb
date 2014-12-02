class Team < ActiveRecord::Base
  has_many :user_teams
  has_many :users, through: :user_teams

  def foods
    self.user_teams.map{|ut| ut.foods}.flatten
  end

  def current_weight
  	current = self.foods.map{|food| food.weight}.inject(:+)
    current != nil ? current : 0
  end

  def current_progress
    self.current_weight/self.goal * 100 
  end
end
