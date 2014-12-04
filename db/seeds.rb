# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Jane", last_name: "Johnson", email: "jane@example.com", password: "abc12345"},
                     {first_name: "John", last_name: "Smith", email: "john@example.com", password: "abc12345"},
                     {first_name: "Alex", last_name: "Trebek", email: "alex@jeopardy.com", password: "abc12345"}
                    ])

foods = Food.create([{name: "canned peas", weight: 1, user_team_id: 1, food_group_id: 2},
                     {name: "canned peaches", weight: 2, user_team_id: 1, food_group_id: 1},
                     {name: "cheerios", weight: 0.5, user_team_id: 2, food_group_id: 3},
                     {name: "peanut butter", weight: 0.5, user_team_id: 3, food_group_id: 4},
                     {name: "spaghetti", weight: 0.5, user_team_id: 4, food_group_id: 5}
                    ])

teams = Team.create([{name: "Flatiron Team", goal: 100, leader_id: 1},
											{name: "Jeopardy Team", goal: 100, leader_id: 3}
                    ])

food_groups = FoodGroup.create([{category: "Canned Fruits"},
																{category: "Canned Vegetables"},
																{category: "Cereal"},
																{category: "Peanut Butter"},
																{category: "Pastas"},
																{category: "Condiments"},
                                {category: "Other"}
															])

user_teams = UserTeam.create([{user_id: 1, team_id: 1},
															 {user_id: 2, team_id: 1},
															 {user_id: 3, team_id: 1},
															 {user_id: 3, team_id: 2}])