class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.float :weight
      t.string :name
      t.integer :user_team_id
      t.integer :food_group_id

      t.timestamps
    end
  end
end
