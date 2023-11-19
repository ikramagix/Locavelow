# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Clearing all data before creating new records
[Review, BicycleAccessory, Bicycle, Rental, Position, Accessory, User].each(&:destroy_all)

# Creating users
5.times do
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: 'password' # In a real application, it is better to use something more secure
    )
end

# Creating bicycles
10.times do
    Bicycle.create(
        owner: User.all.sample,
        model: Faker::Vehicle.model,
        bicycle_type: Bicycle.bicycle_types.keys.sample,
        size: Bicycle.sizes.keys.sample,
        condition: Faker::Lorem.word,
        price_per_hour: Faker::Number.between(from: 5, to: 20)
    )
end

# Creating accessories in a loop
accessories_data = [
  { name: 'Locking', price: 10, accessory_type: 'locking' },
  { name: 'Helmet', price: 5, accessory_type: 'helmet' },
  { name: 'Basket', price: 8, accessory_type: 'basket' },
  { name: 'Light', price: 7, accessory_type: 'light' },
  { name: 'Rack', price: 12, accessory_type: 'rack' }
]

accessories_data.each do |accessory_data|
  Accessory.create(accessory_data)
end

# Creating associations between bicycles and accessories
Bicycle.all.each do |bicycle|
  bicycle.accessories << Accessory.all.sample(rand(1..3))
end

# Creating positions
Bicycle.all.each do |bicycle|
  Position.create(
    bicycle: bicycle,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    address: Faker::Address.full_address
  )
end

# Creating rentals
15.times do
  start_date = Faker::Time.between(from: DateTime.now, to: DateTime.now + 30)
  end_date = start_date + rand(1..5).hours
  Rental.create(
    user: User.all.sample,
    bicycle: Bicycle.all.sample,
    start_date: start_date,
    end_date: end_date,
    rental_status: Rental.rental_statuses.keys.sample
  )
end

# Creating reviews
Rental.all.each do |rental|
  Review.create(
    reviewed_user: rental.bicycle.owner,
    reviewer_user: rental.user,
    rental: rental,
    rating: Faker::Number.between(from: 1, to: 5),
    review_text: Faker::Lorem.paragraph,
    review_date: Faker::Time.between(from: rental.end_date, to: DateTime.now)
  )
end

puts 'Seeds have been created successfully.'
