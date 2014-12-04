class Team < ActiveRecord::Base
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :foods, through: :user_teams

  def current_weight
  	current = self.foods.map{|food| food.weight}.inject(:+)
    current != nil ? current : 0
  end

  def current_progress
    self.current_weight/self.goal * 100 
  end
  
  def current_progress_100
    self.current_progress <= 100 ? self.current_progress : 100
  end

  def leader
    User.find(self.leader_id)
  end
  
end
