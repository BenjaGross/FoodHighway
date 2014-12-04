class AddVerifiedColumnToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :verified, :boolean, default: false
  end
end
