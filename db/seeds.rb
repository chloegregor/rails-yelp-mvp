# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 dominos = { name:"dominos", address: "10 rue la", category:"chinese" }
 x = { name:"lala", address: "11 rue la", category:"italian" }
 y = { name:"lili", address: "12 rue la", category:"chinese" }
 f = { name:"lolo", address: "13 rue la", category:"chinese" }
 r = { name:"qiq", address: "14 rue la", category:"french" }

 restos = [x, y, f, r]
 restos.each do |i|
   restaurants = Restaurant.create(i)
   puts "j'ai crée #{restaurants.name}"
 end
 puts "finish"
