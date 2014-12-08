# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Jane", last_name: "Johnson", email: "jane@example.com", password: "abc12345"},
                     {first_name: "John", last_name: "Smith", email: "john@example.com", password: "abc12345"},
                     {first_name: "Alex", last_name: "Trebek", email: "alex@jeopardy.com", password: "abc12345"},
                     {first_name: "Malik", last_name: "Rose", email: "malik@example.com", password: "abc12345"},
                     {first_name: "Nathaniel", last_name: "Kellogg", email: "nathaniel@example.com", password: "abc12345"},
                     {first_name: "Barbara", last_name: "Jiang", email: "barbara@example.com", password: "abc12345"},
                     {first_name: "Zachary", last_name: "Turner", email: "zachary@example.com", password: "abc12345"},
                     {first_name: "Anders", last_name: "Corr", email: "anders@example.com", password: "abc12345"},
                     {first_name: "Michael", last_name: "McCormick", email: "michael@example.com", password: "abc12345"},
                     {first_name: "Samuel", last_name: "Adams", email: "samuel@example.com", password: "abc12345"},
                     {first_name: "Allison", last_name: "Snyder", email: "allison@example.com", password: "abc12345"},
                     {first_name: "Julie", last_name: "Blandree", email: "julie@example.com", password: "abc12345"},
                     {first_name: "Konrad", last_name: "Shiemek", email: "konrad@example.com", password: "abc12345"},
                     {first_name: "Ramsey", last_name: "Shadfan", email: "ramsey@example.com", password: "abc12345"},
                     {first_name: "Tej", last_name: "Pahwa", email: "tej@example.com", password: "abc12345"},
                     {first_name: "Hannah", last_name: "Barker", email: "hannah@example.com", password: "abc12345"},
                     {first_name: "Olga", last_name: "Pinkerton", email: "olga@example.com", password: "abc12345"},
                     {first_name: "Courtney", last_name: "Stall", email: "courtney@example.com", password: "abc12345"},
                     {first_name: "William", last_name: "Peck", email: "william@example.com", password: "abc12345"},
                     {first_name: "Jay", last_name: "Shah", email: "jay@example.com", password: "abc12345"},
                     {first_name: "Vijay", last_name: "Kedar", email: "vijay@example.com", password: "abc12345"},
                     {first_name: "Shoba", last_name: "Shantanyun", email: "shoba@example.com", password: "abc12345"},
                     {first_name: "Maria", last_name: "Rizo-Vergara", email: "maria@example.com", password: "abc12345"},
                     {first_name: "Karla", last_name: "Cruz", email: "karla@example.com", password: "abc12345"},
                     {first_name: "Emanuel", last_name: "Friedman", email: "emanuel@example.com", password: "abc12345"},
                     {first_name: "Noah", last_name: "Raymon", email: "noah@example.com", password: "abc12345"},
                     {first_name: "Hally", last_name: "Sheldon", email: "hally@example.com", password: "abc12345"},
                     {first_name: "Jessica", last_name: "Cihal", email: "jessica@example.com", password: "abc12345"},
                     {first_name: "Ephraim", last_name: "Mernick", email: "ephraim@example.com", password: "abc12345"},
                     {first_name: "Blake", last_name: "Collster", email: "blake@example.com", password: "abc12345"},
                     {first_name: "Xerses", last_name: "The Great", email: "xerses@example.com", password: "abc12345"},
                     {first_name: "Michelle", last_name: "Lee", email: "michelle@example.com", password: "abc12345"},
                     {first_name: "Grace", last_name: "Zhang", email: "grace@example.com", password: "abc12345"}
                    ])

foods = Food.create([{name: "canned peas", weight: 1, user_team_id: 1, food_group_id: 2},
                     {name: "canned peaches", weight: 2, user_team_id: 1, food_group_id: 1},
                     {name: "cheerios", weight: 0.5, user_team_id: 2, food_group_id: 3},
                     {name: "peanut butter", weight: 0.5, user_team_id: 3, food_group_id: 4},
                     {name: "spaghetti", weight: 0.5, user_team_id: 4, food_group_id: 5}
                    ])

teams = Team.create([{name: "Flatiron Team", goal: 250, leader_id: 1},
											{name: "Jeopardy Team", goal: 140, leader_id: 3},
                      {name: "Dev Center", goal: 200, leader_id: 4}
                    ])

food_groups = FoodGroup.create([{category: "Canned Fruits"},
																{category: "Canned Vegetables"},
                                {category: "Cereal"},
																{category: "Condiments"},
                                {category: "Peanut Butter"},
                                {category: "Pastas"},
                                {category: "Soups"},
                                {category: "Other"}
															])

user_teams = UserTeam.create([{user_id: 1, team_id: 1},
															 {user_id: 2, team_id: 1},
															 {user_id: 3, team_id: 1},
															 {user_id: 3, team_id: 2}])