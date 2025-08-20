# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "2923930", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "03848238", category: "italian"}
creperie = {name: "Creperie", address: "214 rue de Grenelle, 75007 Paris", phone_number: "30030230", category: "french"}
brigittines = {name: "Brigittines", address: "rue du Cloître, 1000 Bruxelles", phone_number: "+3249494932", category: "belgian"}
yoka_tomo = {name: "Yoka Tomo", address: "place des Chasseurs Ardennais, 1030 Schaerbeek", phone_number: "202938923", category: "japanese"}


[dishoom, pizza_east, creperie, brigittines, yoka_tomo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
