class FoodGroup < ActiveRecord::Base
  has_many :foods

  def weight
  	self.foods.collect{|food| food.weight}.inject(:+) || 0
  end
end
