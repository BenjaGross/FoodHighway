class AddDonationLocationToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :donation_location, :text
  end
end
