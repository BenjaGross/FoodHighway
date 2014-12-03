class AddPicturesToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_url, :string
    add_column :users, :cover_url, :string
  end
end
