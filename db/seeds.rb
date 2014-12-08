# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Jane", last_name: "Johnson", email: "jane@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/commons/e/ea/Aishwariya_Rai_(face).jpg"},
                     {first_name: "John", last_name: "Smith", email: "john@example.com", password: "abc12345", profile_url: "https://c2.staticflickr.com/4/3665/9108406820_19ac7cabef_z.jpg"},
                     {first_name: "Alex", last_name: "Trebek", email: "alex@jeopardy.com", password: "abc12345", profile_url: "http://1.bp.blogspot.com/-leL4dZkDzRc/VBd_AyUGo7I/AAAAAAAAIwU/C6GeKAM4Koc/s1600/AlexTrebek.png"},
                     {first_name: "Malik", last_name: "Rose", email: "malik@example.com", password: "abc12345", profile_url: "http://pixabay.com/static/uploads/photo/2014/07/09/10/04/man-388104_640.jpg"},
                     {first_name: "Nathaniel", last_name: "Kellogg", email: "nathaniel@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/commons/f/fa/Ishtiaque_Hossain_Face_Portrait.jpg"},
                     {first_name: "Barbara", last_name: "Jiang", email: "barbara@example.com", password: "abc12345", profile_url: "https://c1.staticflickr.com/9/8482/8248556709_c29cceaea3_z.jpg"},
                     {first_name: "Zachary", last_name: "Turner", email: "zachary@example.com", password: "abc12345", profile_url: "https://c2.staticflickr.com/8/7314/9692203669_91dc9a2c54_z.jpg"},
                     {first_name: "Anders", last_name: "Corr", email: "anders@example.com", password: "abc12345", profile_url: "https://c2.staticflickr.com/6/5127/5217645835_015abcd52c_z.jpg"},
                     {first_name: "Michael", last_name: "McCormick", email: "michael@example.com", password: "abc12345", profile_url: "https://c1.staticflickr.com/9/8434/7743269718_75e77cf7a1_z.jpg"},
                     {first_name: "Samuel", last_name: "Adams", email: "samuel@example.com", password: "abc12345", profile_url: "http://photos1.blogger.com/blogger/4452/669/1600/me.1.jpg"},
                     {first_name: "Allison", last_name: "Snyder", email: "allison@example.com", password: "abc12345", profile_url: "https://c1.staticflickr.com/9/8482/8248556709_c29cceaea3_z.jpg"},
                     {first_name: "Julie", last_name: "Blandree", email: "julie@example.com", password: "abc12345", profile_url: "http://3.bp.blogspot.com/-Pdb0pghW5So/UTPiUfDszxI/AAAAAAAACTo/CqDxeXK2BiA/s220/IMG_5960_2.jpg"},
                     {first_name: "Konrad", last_name: "Shiemek", email: "konrad@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/commons/b/bb/Andrew_DeSantis_Profile_Picture.jpg"},
                     {first_name: "Ramsey", last_name: "Shadfan", email: "ramsey@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/commons/9/93/Leigh_Van_Bryan_profile.jpg"},
                     {first_name: "Tej", last_name: "Pahwa", email: "tej@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/en/7/70/Shawn_Tok_Profile.jpg"},
                     {first_name: "Hannah", last_name: "Barker", email: "hannah@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/commons/5/59/Sivan_shavit_profile.jpg"},
                     {first_name: "Olga", last_name: "Pinkerton", email: "olga@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/commons/7/75/Meerkat_profile.jpg"},
                     {first_name: "Courtney", last_name: "Stall", email: "courtney@example.com", password: "abc12345", profile_url: "http://photos1.blogger.com/x/blogger/5224/3776/1600/912926/colorheadcopy%20copy.jpg"},
                     {first_name: "William", last_name: "Peck", email: "william@example.com", password: "abc12345", profile_url: "http://farm5.static.flickr.com/4119/4777343863_8453b69606_m.jpg"},
                     {first_name: "Jay", last_name: "Shah", email: "jay@example.com", password: "abc12345", profile_url: "https://c1.staticflickr.com/9/8083/8344072439_d11702f4ed.jpg"},
                     {first_name: "Vijay", last_name: "Kedar", email: "vijay@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/en/1/17/My_Profile_Pik.jpg"},
                     {first_name: "Shoba", last_name: "Shantanyun", email: "shoba@example.com", password: "abc12345", profile_url: "http://upload.wikimedia.org/wikipedia/commons/6/6a/Joseph_Ingraham_1762-1800_profile.jpg"},
                     {first_name: "Maria", last_name: "Rizo-Vergara", email: "maria@example.com", password: "abc12345", profile_url: "http://fc05.deviantart.net/fs71/f/2011/213/c/2/quick_tiffany_painting_by_toastified-d42bkyg.jpg"},
                     {first_name: "Karla", last_name: "Cruz", email: "karla@example.com", password: "abc12345", profile_url: "http://4.bp.blogspot.com/_VzG9xhJEI-Y/Ridp_8E7gPI/AAAAAAAAAQc/y1ww67iGwlM/s400/hart_k_pic2.jpg"},
                     {first_name: "Emanuel", last_name: "Friedman", email: "emanuel@example.com", password: "abc12345", profile_url: "https://c1.staticflickr.com/9/8091/8562843137_16b14cd861.jpg"}
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