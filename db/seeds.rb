# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."
# 100.times do
#   category = ["chinese", "italian", "japanese", "french", "belgian"]
#   restaurant = {
#     name: Faker::Restaurant.name,
#     address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: category[rand(0..4)]
#   }
#   restaurant = Restaurant.create!(restaurant)
#   puts "Created #{restaurant.name}"
# end

# puts "Finished"

puts "Cleaning reviews database..."
Review.destroy_all

puts "Creating reviews..."

restaurants = Restaurant.all

200.times do
  Review.create!(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant: restaurants.sample
  )
end

puts "Created review"


puts "Finished"
