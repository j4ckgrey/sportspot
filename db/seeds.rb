User.delete_all
Club.delete_all
Venue.delete_all

clubs_names = ["Kampfsport Center Köln", "Kautz Sportcenter", "Boulderplanet", "Kletterfabrik Köln", "K11 | Bouldering in South City", "Stuntwerk Köln", "Kegelclub - Die Teddybären", "City-Bowling Köln", "WDR Volleyball", "SC Janus e. V.", "ESV Olympia Köln - Fußball", ]
clubs_zip_codes = ["50823", "50939", "50825", "50825", "50678", "51063", "50676", "50674", "50676", "50674", "50739"]
clubs_streets = ["Venloer Str. 182", "Rhöndorfer Str. 10-13", "Oskar-Jäger-Straße 143H", "Oskar-Jäger-Straße 173", "Kyllstraße 11", "Schanzenstraße 6-20", "Agrippastraße 6", "Moselstraße 44", "Am Pantaleonsberg 3", "Hohenstaufenring 42", "Lämmerstr."]
clubs_phone_numbers = "123456789"
clubs_emails = "something@address.de"
description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempus consequat velit, in tincidunt orci ornare at. Nunc elit mauris, luctus non dapibus feugiat, bibendum iaculis odio. Morbi orci ante, egestas a risus non, mattis bibendum nulla. Mauris et dolor quis nibh pulvinar pharetra in commodo nisi. Fusce vel arcu non odio bibendum fermentum at nec eros. Vivamus vitae feugiat mi. Nam id dolor ac dolor tristique dignissim. Morbi et congue quam. Morbi molestie vitae tortor sit amet suscipit."
user = User.create(email: "jack@jack.jack", password: "jackjack", first_name: "Jack", last_name: "Grey", zip_code: 42929, city: "Wermelskirchen", street: "Eich 34", phone_number: 123456789, roles: ['owner'], description: description)
clubs_names.each_with_index do |clubname, index|
  club = Club.new(name: clubname)
  club.zip_code = clubs_zip_codes[index]
  club.street = clubs_streets[index]
  club.phone_number = clubs_phone_numbers
  club.email = clubs_emails
  club.city = "Cologne"
  club.user = user
  club.address = "#{club.street}, #{club.zip_code}, #{club.city}"
  club.save
end
clubs = Club.all
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
