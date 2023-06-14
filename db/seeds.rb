require 'faker'

# Seed for users with 'owner' role
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    roles: ['owner']
  )
end

# Seed for clubs
owners = User.where(roles: ['owner'])
23.times do
  address = Faker::Address.full_address
  club = Club.create!(
    name: Faker::Company.name,
    zip_code: '50667', # Zip code for Cologne
    city: 'Cologne',
    street: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    user: owners.sample,
    address: address
  )
  club.latitude = 50.9375 + rand(-0.05..0.05) # Latitude within Cologne
  club.longitude = 6.9603 + rand(-0.05..0.05) # Longitude within Cologne
  club.save
end

# Seed for users with 'user' role
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    roles: ['user']
  )
end

# Seed for users with 'admin' role
3.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    roles: ['admin']
  )
end

# Seed for venues, bookings, and reviews
clubs = Club.all
users = User.where(roles: ['user'])
categories = ['Football', 'Basketball', 'Tennis', 'Badminton', 'Swimming']

clubs.each do |club|
  5.times do
    venue = club.venues.create!(
      name: Faker::Company.name,
      category: categories.sample,
      description: Faker::Lorem.paragraph,
      price: Faker::Number.decimal(l_digits: 2)
    )

    5.times do
      booking = venue.bookings.create!(
        date: Faker::Date.between(from: 1.year.ago, to: 1.year.from_now),
        time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
        user: users.sample
      )

      Review.create!(
        title: Faker::Lorem.sentence,
        comment: Faker::Lorem.paragraph,
        rating: Faker::Number.between(from: 1, to: 5),
        booking: booking
      )
    end
  end
end
