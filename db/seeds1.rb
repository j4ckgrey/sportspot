clubs_names = ["Kampfsport Center Köln", "Kautz Sportcenter", "Boulderplanet", "Kletterfabrik Köln", "K11 | Bouldering in South City", "Stuntwerk Köln", "Kegelclub - Die Teddybären", "City-Bowling Köln", "WDR Volleyball", "SC Janus e. V.", "ESV Olympia Köln - Fußball", ]
clubs_zip_codes = ["50823", "50939", "50825", "50825", "50678", "51063", "50676", "50674", "50676", "50674", "50739"]
clubs_streets = ["Venloer Str. 182", "Rhöndorfer Str. 10-13", "Oskar-Jäger-Straße 143H", "Oskar-Jäger-Straße 173", "Kyllstraße 11", "Schanzenstraße 6-20", "Agrippastraße 6", "Moselstraße 44", "Am Pantaleonsberg 3", "Hohenstaufenring 42", "Lämmerstr."]
clubs_phone_numbers = "123456789"
clubs_emails = "something@address.de"

clubs = Club.all
kautz_venues = %w[Fitnessstudio Squash Badminton Tennis Tischtennis Soccer Kampfsportschule]
kautz_venues.each do |venue|
  venue_name = Venue.new(name: venue, category: venue)
  venue_name.club = clubs[1]
  venue_name.save
end
