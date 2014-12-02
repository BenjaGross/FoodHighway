class UserTeam < ActiveRecord::Base
  belongs_to :user
  belongs_to :team
  has_many :foods

  def self.build_by_objects(team, user)
  	UserTeam.create(team_id: team.id, user_id: user.id)
  end
end
