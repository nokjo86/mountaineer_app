# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "Seeded data successfully deleted"

puts "Seeding Users"

user_admin = User.create(email: 'admin@mountaineer.com', password: 'password', admin: true)
user_1 = User.create(email: 'user1@mountaineer.com', password: 'password')
user_2 = User.create(email: 'user2@mountaineer.com', password: 'password')

puts "Users successfully seeded"

# Gear 

puts "Seeding Gears"

gears = ['water bottle', 'sleeping bag', 'compass', 'mat', 'travel pillow', 'backpack', 'tent', 'swiss army knife', 'water treatment tablets', 'watch', 'raincover', 'walking poles', 'thermal tops', 'warm sweater', 'running shorts', 'multi trousers', 'singlet', 'Personal Location Beacon', 'First Aid Kit', 'waterproof matches', 'waterproof map', 'mosquito spray', 'sunscreen', 'power bank', 'cable for phones']

gears.each do |gear|
  Gear.create(
    name: gear
  )
end

puts "Gears successfully seeded"

# location name , description, ** latitude and longitude to be added

puts "Seeding Locations"

locations = [
  {
    name: 'The Pinnacle, Victoria, AU',
    description: 'Bring a compass.  It\'s awkward when you have to eat your friends'
    # latitude: 
    # longitude: 
  },
  {
    name: 'Larapinta Trail, Northern Territory, AU',
    description: 'The Larapinta Trail is a challenging 13 to 15 day trek that covers 223km of beautiful scenery. It’s definitely not for beginners, and it’s best to walk during the cooler months from April to September. You’ll need rest days and food drops to complete the hike, and while it’s hard, it is one-way with relatively good access at both entry points. For hikers willing to take on the challenge, the reward will be unique and stunning scenery.'
    # latitude: 
    # longitude: 
  },
  {
    name: 'The Arkaba Walk, South Australia, AU',
    description: 'This walk traverses South Australia’s ancient, iconic Flinders Ranges and is the perfect hike to explore this unique part of the country. This experience will have you seeing native wildlife like kangaroos, wallaroos and emus, as well as rich and spectacular scenery.'
    # latitude: 
    # longitude: 
  }
]

locations.map! do |location|
    Location.create(
      name: location[:name],
      description: location[:description]
      # user_id: locations.sample.user_id
    )
end

# locations.each do |location|
#   location.image.attach(
#     io: File.open("app/assets/images/header-home.jpg"), 
#     filename: "header-home.jpg", 
#     content_type: "image/jpg"
#   )
# end 

puts "Locations successfully seeded"

