# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Creating 5 users...'
for i in 1..5 do
  user = User.new(
    email: "email#{i}@user.com",
    first_name: "User#{i}",
    last_name: "User#{i}",
    password: "Password#{i}",
    zip_code: "5067#{i}",
    city: "City#{i}",
    street: "Street#{i}",
    phone_number: "0173 00000#{i}"
  )
  user.save!
end

puts 'Creating 5 clubs with 5 venues each...'
for i in 1..5 do
  club = Club.new(
    email: "email#{i}@club.com",
    name: "Club#{i}",
    password: "Password#{i}",
    zip_code: "5067#{i}",
    city: "City#{i}",
    street: "Street#{i}",
    phone_number: "0173 00000#{i}"
  )
  club.save!
  for v in 1..5 do
    venue = Venue.new(
      name: "Venue#{v}",
      category: "categroy1",
      description: "Description#{v}",
      club_id: club.last
    )
    venue.save!
  end
end

puts 'Finished creating 5 users, 5 clubs and 25 venues!'
