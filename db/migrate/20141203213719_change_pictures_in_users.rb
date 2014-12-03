class ChangePicturesInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :profile_url, :string, :default => ""
  	change_column :users, :cover_url, :string, :default => ""
  end
end
