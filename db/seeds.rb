# This is where you can create initial data for your app.

# require 'faker'
# puts "deleting DB"
# Restaurant.destroy_all
# puts "old restaurants destroyed"

# puts "Creating Restaurants"
# 100.times do 
#   restaurant = Restaurant.new(
#     name: Faker::Company.name,
#     address: Faker::Address.street_name
#     )
#   restaurant.save!
# end
# puts "Created DB"


require "json"
require "rest-client"
require 'faker'

puts "deleting DB"
Restaurant.destroy_all
puts "old restaurants destroyed"

response = RestClient.get "https://api.github.com/users/lewagon/repos"
repos = JSON.parse(response)

repos.each do |repo|
  restaurant = Restaurant.new(
    name: repo["name"],
    address: Faker::Address.street_name
  )
  restaurant.save!
end