class Food < ActiveRecord::Base
  validates :name, :weight, presence: true
  belongs_to :user_team
  has_one :user, through: :user_team
  has_one :team, through: :user_team
  belongs_to :food_group
  default_scope { where(verified: true)}

  def verify
    self.verified = true
    self.save
  end
end
