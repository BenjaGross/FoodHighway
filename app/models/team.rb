class Team < ActiveRecord::Base
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :foods, through: :user_teams

  def current_weight
  	current = self.foods.map{|food| food.weight}.inject(:+)
    current != nil ? current : 0
  end

  def verified_foods
    self.foods.where("verified = ?", true)
  end

  def unverified_foods
    self.foods.where("verified = ?", false)
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

  def hashtag
    '#' + self.name.gsub(" ", "").downcase + 'fooddrive'
  end

  def hashtag_no_pound
    self.name.gsub(" ", "").downcase + 'fooddrive'
  end

  def no_unverified_foods?
    self.unverified_foods.empty?
  end

  def self.top_3_teams
    sorted_teams = Team.all.sort{|x,y| y.current_weight <=> x.current_weight}
    sorted_teams[0..2]
  end
  
end
