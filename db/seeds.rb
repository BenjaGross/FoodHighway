# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Jane", last_name: "Johnson", email: "jane@example.com", password: "abc123"},
                     {first_name: "John", last_name: "Smith", email: "john@example.com", password: "abc123"}
                    ])
foods = Food.create([{name: "canned peas", weight: 1},
                     {name: "canned peaches", weight: 2},
                     {name: "cheerios", weight: 0.5}
                    ])
