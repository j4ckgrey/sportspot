Chatroom.delete_all
Review.delete_all
Booking.delete_all
Venue.delete_all
Club.delete_all
User.delete_all

clubs_names = ["Kampfsport Center Köln", "Kautz Sportcenter", "Boulderplanet", "Kletterfabrik Köln", "K11 | Bouldering in South City", "Stuntwerk Köln", "Kegelclub - Die Teddybären", "City-Bowling Köln", "WDR Volleyball", "SC Janus e. V.", "ESV Olympia Köln - Fußball", ]
clubs_zip_codes = ["50823", "50939", "50825", "50825", "50678", "51063", "50676", "50674", "50676", "50674", "50739"]
clubs_streets = ["Venloer Str. 182", "Rhöndorfer Str. 10-13", "Oskar-Jäger-Straße 143H", "Oskar-Jäger-Straße 173", "Kyllstraße 11", "Schanzenstraße 6-20", "Agrippastraße 6", "Moselstraße 44", "Am Pantaleonsberg 3", "Hohenstaufenring 42", "Lämmerstr."]
clubs_phone_numbers = "123456789"
clubs_emails = "something@address.de"
description = "Welcome to the club, the premier sport club dedicated to nurturing talent and fostering a passion for sports! Located in the heart of the city, Apex Athletics is a vibrant and inclusive community where athletes of all ages and skill levels come together to train, compete, and grow.
Our state-of-the-art facility boasts top-notch amenities, including well-equipped gyms, cutting-edge training equipment, and meticulously maintained playing fields. Whether you're a beginner looking to develop fundamental skills or a seasoned athlete aiming for the highest level of performance, we have programs tailored to suit your needs.
At Apex Athletics, we offer a wide range of sports disciplines to cater to diverse interests. From soccer, basketball, and tennis to swimming, gymnastics, and martial arts, our experienced coaches provide expert guidance and create a supportive environment to help you achieve your goals. We emphasize holistic development, focusing not only on physical prowess but also on character-building, teamwork, and sportsmanship.
For our younger athletes, we have a comprehensive youth development program that introduces them to various sports, fostering a love for an active lifestyle and instilling values of discipline and resilience. Our adult leagues and recreational programs offer opportunities for friendly competition and social engagement, ensuring a fulfilling experience for athletes of all ages.
Join the Apex Athletics family today and unlock your full athletic potential. Experience the thrill of pushing boundaries, making lifelong friends, and creating unforgettable memories. Get ready to reach new heights with us at Apex Athletics!"
user = User.create(email: "jack@jack.jack", password: "jackjack", first_name: "Jack", last_name: "Grey", zip_code: 42929, city: "Wermelskirchen", street: "Eich 34", phone_number: 123456789, roles: ['owner'])
clubs_names.each_with_index do |clubname, index|
  club = Club.new(name: clubname)
  club.zip_code = clubs_zip_codes[index]
  club.street = clubs_streets[index]
  club.phone_number = clubs_phone_numbers
  club.email = clubs_emails
  club.city = "Cologne"
  club.description = description
  club.user = user
  club.status = true
  club.address = "#{club.street}, #{club.zip_code}, #{club.city}"
  club.save
end
clubs = Club.all
description ="Welcome to the venue, a breathtaking sports venue that embodies the epitome of athletic excellence and fan engagement. Nestled amidst the picturesque surroundings, this state-of-the-art facility stands as a testament to the unifying power of sports and the thrill of competition.
it is a colossal architectural marvel, seamlessly blending modern design with a deep appreciation for the local environment. Its sweeping curves and sleek lines pay homage to the nearby river, with large windows strategically placed to offer panoramic views of the surrounding landscape."
Venue.create(name: "MartialArts", category: "MartialArts", description: description, price: 17.99, club: clubs[0])
Venue.create(name: "Boulderplanet", category: "Bouldering", description: description, price: 15.99, club: clubs[2])
Venue.create(name: "Kletterfabrik Köln", category: "Bouldering", description: description, price: 70.99, club: clubs[3])
Venue.create(name: "K11 | Bouldering in South City", category: "Bouldering", description: description, price: 33.99, club: clubs[4])
Venue.create(name: "Stuntwerk Köln", category: "Bouldering", description: description, price: 11.10, club: clubs[5])
Venue.create(name: "Kegelclub - Die Teddybären", category: "Kegel", description: description, price: 40.50, club: clubs[6])
Venue.create(name: "City-Bowling Köln", category: "Bowling", description: description, price: 22.99, club: clubs[7])
Venue.create(name: "WDR Volleyball", category: "Volleyball", description: description, price: 21.99, club: clubs[8])
scjenusvenues = %w[Swimming Football Volleyball Basketball]
scjenusvenues.each do |venue|
  venue_name = Venue.new(name: venue, category: venue, description: description)
  venue_name.club = clubs[9]
  venue_name.save
end
Venue.create(name: "ESV Olympia Köln - Fußball", category: "Football", description: description, club: clubs[10])
kautz_venues = %w[Squash Swimming Tennis TableTennis Soccer MartialArts]
kautz_venues.each do |venue|
  venue_name = Venue.new(name: venue, category: venue, description: description)
  venue_name.club = clubs[1]
  venue_name.save
end
