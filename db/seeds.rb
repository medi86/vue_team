# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

team_names = ["Cubs", "White Sox", "Bulls", "Blackhawks", "Bears"]
player_names = ["John", "Bill", "Sally", "Susan", "Kyel"]

team_names.each do |team_name|
  team = Team.create!(name: team_name)
  player_names.each do |player_name|
    team.players.create!(name: player_name)
  end
end


