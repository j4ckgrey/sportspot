require "open-uri"
Message.delete_all
Chatroom.delete_all
Review.delete_all
Booking.delete_all
Venue.delete_all
Club.delete_all
User.delete_all

basketball = URI.open("https://images.unsplash.com/photo-1519766304817-4f37bda74a26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
tennis1 = URI.open("https://images.unsplash.com/photo-1580763850522-504d40a05c50?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
tennis2 = URI.open("https://tigerturf.com/in/wp-content/uploads/2019/11/How-to-build-a-tennis-court-1440x1080.jpg")
basketball3 = URI.open("https://images.unsplash.com/photo-1583514735599-2ec2d33beaf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80")
bowling1 = URI.open("https://images.unsplash.com/photo-1545056453-f0359c3df6db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
bowling2 = URI.open("https://files.guidedanmark.org/files/451/273351_Skjern_Bowling_Center.jpg")
martialarts1 = URI.open("https://plus.unsplash.com/premium_photo-1667941272664-9146446e1b7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
martialarts2 = URI.open("https://i.pinimg.com/736x/41/ee/98/41ee98ff413e459e8b4eadb2ced7aa85--taekwondo-karate.jpg")
football1 = URI.open("https://images.unsplash.com/photo-1536639070539-43ec572aca6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
football2 = URI.open("https://images.unsplash.com/photo-1431324155629-1a6deb1dec8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
football3 = URI.open("https://germinalamenity.com/wp/wp-content/uploads/2022/12/Football-pitch-maintenance-Stirling-Albion.png")
swimming1 = URI.open("https://images.unsplash.com/photo-1530549387789-4c1017266635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
swimming2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Depart4x100.jpg/800px-Depart4x100.jpg")
volleyball1 = URI.open("https://images.unsplash.com/photo-1567781830902-685fb3401f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
volleyball2 = URI.open("https://images.unsplash.com/photo-1584692618238-72820dbd5c60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
volleyball3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/b/bf/Algeria_and_Japan_women%27s_national_volleyball_team_at_the_2012_Summer_Olympics_%287913959028%29.jpg")
volleyball4 = URI.open("https://t3.ftcdn.net/jpg/04/22/84/12/360_F_422841241_OR69MNhNG3Sxl6pmrKwuoBZPaZpZLt1a.jpg")
basketball2 = URI.open("https://images.unsplash.com/photo-1546519638-68e109498ffc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2090&q=80")
bouldering = URI.open("https://images.unsplash.com/photo-1564769662533-4f00a87b4056?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2144&q=80")
bouldering2 = URI.open("https://images.unsplash.com/photo-1536639070539-43ec572aca6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
bouldering3 = URI.open("https://assets.simpleviewinc.com/simpleview/image/upload/c_fit,w_1000,h_800/crm/cooperstownny/Table-Rock-Bouldering-climb-5111d4db5056a36_5111d673-5056-a36a-0737f09900910175.jpg")
bouldering4 = URI.open("https://images.squarespace-cdn.com/content/v1/5bfed270697a98d5791b166a/2cf4e95e-90ca-4b63-9245-7c2294de8bc8/processed_20211107_115448.jpg")
bouldering5 = URI.open("https://images.squarespace-cdn.com/content/v1/5be63c9ed274cb9805e09974/1671135901740-3YV42AMWE6NUZPDXG1A7/Girl+Climbing+at+The+Spot+Golden+Wide.jpg?format=2500w")
bouldering6 = URI.open("https://www.visitmelbourne.com/-/media/atdw/melbourne/see-and-do/leisure-activities/2e47524d52c1829b0e2201e127510e3f_1600x1200.jpeg?ts=20211115300650")
kegel1 = URI.open("https://images.squarespace-cdn.com/content/v1/63763e1b3af6b10d5297596f/d061aa8b-cc25-4816-93f8-77b6ec4beb1b/tempImage7YimLQ.jpg")
kegel2 = URI.open("https://imageflow.rausgegangen.de/url/https%3A//cms.rausgehangen.de/storage/uploads/2019/01/22/5c473a054475fschwarzlicht-kegeln.jpg?width=800&height=600&mode=crop")
squash1 = URI.open("https://www.uwe.ac.uk/-/media/uwe/images/life/sport/sport-squash-court-600x600.jpg?h=602&w=602&hash=7F7A705AA80626A14BAE7A353615A316")
squash2 = URI.open("https://asbsquash.de/modules/produkty/galleries/24/423.jpg")
tennistable1 = URI.open("https://media.istockphoto.com/id/502189498/de/foto/table-tennis-ball-und-schl%C3%A4ger.jpg?s=612x612&w=0&k=20&c=3sf5Yr6tYNMGBJ9X2Lidu6YlW-upypMbUQ8Mkj5SuAc=")
tennistable2 = URI.open("https://www.sintensports.com.sg/wp-content/uploads/2021/12/image1.jpg")

#venues
tennis_description1 = "Welcome to our tennis sport club! We offer a vibrant and inclusive environment for players of all ages and skill levels. Our state-of-the-art facilities include well-maintained tennis courts and top-quality equipment. With experienced coaches, we provide professional training programs, individual lessons, and exciting tournaments. Whether you're a beginner or a seasoned player, our club fosters a strong sense of community, where you can meet fellow enthusiasts and participate in friendly matches. Join us to enhance your skills, stay active, and enjoy the thrilling game of tennis."
kegel_descriptionv = "Experience the ultimate bowling destination at Kegel Venue. With state-of-the-art lanes, impeccable maintenance, and a vibrant atmosphere, it's the perfect place to showcase your bowling prowess. Get ready for an exhilarating and unforgettable bowling experience at Kegel Venue."
bouldering_description1 = "Welcome to Ascend, the premier bouldering venue for climbers of all levels. Ascend offers a diverse range of challenging routes, meticulously crafted walls, and a supportive community. Immerse yourself in the thrill of bouldering in a vibrant and dynamic environment at Ascend."
bouldering_description2 = "Welcome to the Climbing Zone, where bouldering dreams become a reality. With its towering walls, varied routes, and top-notch safety measures, ClimbZone is a haven for bouldering enthusiasts. Whether you're a beginner or a seasoned climber, prepare to push your limits and experience the thrill of vertical adventures at ClimbZone."
bouldering_description3 = "Discover the ultimate bouldering playground at RockRise. Our venue offers a diverse range of challenging routes, meticulously designed climbing walls, and a supportive community. Unleash your inner adventurer and experience the thrill of bouldering in a welcoming and exhilarating atmosphere at RockRise."
bouldering_description4 = "Embark on a gravity-defying journey at BoulderZone, the ultimate bouldering destination. Our meticulously crafted walls, diverse routes, and expertly set problems cater to climbers of all abilities. Join our vibrant community, push your limits, and experience the thrill of bouldering in a dynamic and supportive environment at BoulderZone."
martialarts_description = "Welcome to StrikeZone, the premier martial arts venue for enthusiasts of all disciplines. With our expert instructors, top-notch training facilities, and a supportive community, StrikeZone is the perfect place to hone your skills, build confidence, and embrace the art of self-defense. Unleash your potential at StrikeZone."
bowling_description = "Welcome to StrikeLane, the premier bowling venue for endless fun and friendly competition. With state-of-the-art lanes, modern amenities, and a lively atmosphere, StrikeLane is the perfect place to strike some pins with friends and family. Lace up your bowling shoes and get ready for an unforgettable bowling experience at StrikeLane."
volleyball_description = "Welcome to SpikeZone, the ultimate volleyball venue for players and fans alike. Our pristine courts, professional-grade equipment, and passionate community create the perfect setting for competitive matches and thrilling tournaments. Join us at SpikeZone and experience the exhilaration of volleyball in a dynamic and welcoming atmosphere."
squash_description = "Step into SquashZone, where squash enthusiasts thrive. Our world-class courts, advanced lighting, and top-quality equipment offer the perfect environment for intense matches and skill-building. Join our passionate community and immerse yourself in the fast-paced action of squash at SquashZone."
swimming_description = "Dive into AquaSprint, the ultimate swimming venue for aquatic enthusiasts. Our state-of-the-art Olympic-sized pools, crystal-clear waters, and expertly maintained facilities provide the ideal setting for swimmers of all levels. Join us at AquaSprint and experience the joy and exhilaration of swimming in a world-class aquatic environment."
tennis_description = "Welcome to AceCourt, the premier tennis venue for players of all levels. Our meticulously maintained courts, professional-grade facilities, and a vibrant tennis community create the perfect setting for intense matches and skill development. Join us at AceCourt and unleash your passion for tennis in a dynamic and supportive environment."
tabletennis_description = "Welcome to PingPongZone, the ultimate table tennis venue for players seeking fast-paced action. With top-of-the-line tables, professional-grade paddles, and a lively atmosphere, PingPongZone offers the perfect space to showcase your skills and compete with fellow enthusiasts. Join us at PingPongZone and experience the thrill of table tennis at its finest."
football_description = "Welcome to GoalArena, the premier soccer venue for players and fans alike. With meticulously maintained fields, top-quality facilities, and an electric atmosphere, GoalArena provides the perfect stage for intense matches and memorable moments. Lace up your boots and immerse yourself in the beautiful game at GoalArena."
martialarts2_description = "Enter the dojo of Warrior's Haven, a martial arts venue that cultivates discipline, skill, and camaraderie. With expert instructors, a dedicated training space, and a supportive community, Warrior's Haven is the perfect sanctuary to explore and master various martial arts disciplines while fostering personal growth and self-defense capabilities."
basketball_description = "Welcome to our dynamic basketball sport club! We are dedicated to promoting the love for the game and providing a supportive environment for basketball enthusiasts of all ages. Our state-of-the-art facilities and experienced coaches offer comprehensive training programs, organized leagues, and thrilling competitions. Whether you're a beginner aiming to learn the fundamentals or an experienced player looking to elevate your skills, our club is the perfect place for you. Join our passionate community and experience the exhilaration of dribbling, shooting, and teamwork. Let's hit the court and embrace the excitement of basketball together!"

#clubs
kampf_description = "kampf : With us you will find leisure, sport, fun, self-defence and competition for everyone from the age of 4*. We train Olympic kickboxing, self-defense and women's kickboxing. As a competition basis (K1), boxing and Thai boxing techniques. You can find us during our training times in Cologne-Ehrenfeld, right next to the Piusstrasse underground station. You are welcome to come by for a trial session during the specified opening hours. Children, teenagers and adults from the age of 4 learn with us."
kautz_description = "The sports center Kautz in Cologne has been the multifunctional sports facility for leisure sports in the south-west of Cologne since 1980. Since then, our strengths have been in our family relationship with our customers, as well as our wide range of racket, ball and endurance sports. All information about racket sport. Since 2016 we have also practiced martial arts at the Boxing Company Cologne and since the beginning of last year we have also had an offer for the smallest athletes in the world: the little buggers. (Baby and children courses)."
boulderplanet_description = "On an area of 1,800 square meters you can climb in the Ehrenfeld Boulderplanet without a rope in seven different levels of difficulty from 2a+ to 8a+. The walls are up to 4.50 meters high, and anyone who falls lands on a 30 centimeter thick soft floor mat with a special structure. A separate training area with campus board and breadboard is available. Warming up and stretching is also possible in a separate area. Wall bars and cardio machines are available, as are changing rooms with lockers and foot wash basins."
kletterfabrik_description = "Welcome to our thrilling bouldering sport club! We are a haven for climbing enthusiasts seeking an adrenaline-pumping experience. With our expertly crafted bouldering walls and diverse routes, we cater to climbers of all levels, from beginners to seasoned pros. Our club offers a supportive and inclusive community where climbers can challenge themselves, improve their technique, and push their limits. Join us and embrace the physical and mental aspects of this exhilarating sport while forging new friendships. Let's scale new heights together and embark on an unforgettable bouldering adventure!"
k11_description = "Our small, fine bouldering hall is located in the middle of the southern part of Cologne. Here you can expect many bouldering walls from easy to the big roof in a relaxed and pleasant atmosphere. Plus the opportunity to enjoy a delicious coffee or a beer in the seating area or outside under the trees. The hall is a few minutes' walk from Chlodwigplatz, parking spaces for bicycles and cars are available."
stuntwerk_description = "The Stuntwerk brand is growing and developing rapidly. Thanks to the unique concept, professional implementation and clear market positioning, we achieve double-digit growth rates. With several strong investors and partners at our side, we offer sports-loving private individuals and companies (regardless of industry) the opportunity to invest in new stunt work projects or to participate in existing ones."
kegel_description = "Die Teddybären : Welcome to our lively Kegel club! We are dedicated to the sport of kegeling and providing a fun-filled environment for enthusiasts of all ages. Our modern facilities and friendly atmosphere offer a perfect space to hone your kegeling skills. Whether you're a beginner looking to learn the techniques or a seasoned player seeking friendly competitions, our club is the ideal place for you. Join our supportive community and experience the excitement of knocking down pins while fostering friendships and a healthy lifestyle. Let's strike, spare, and celebrate together!"
citybowling_description = "Bowling in the best and most relaxed atmosphere - four completely in 2022 newly installed lanes and a revised room concept await you. The new leather seating ensures a comfortable stay and the new tables offer enough space to enjoy freshly prepared snacks such as pizza or nachos as well as cocktails - prepared with only the highest quality spirits. Our offers and specials offer you special discounts and promotions for larger groups or school classes. For corporate events or Christmas parties, individual lanes or the entire City Bowling Center can be booked."
wdr_description = "We are a dedicated, diverse group of people between the ages of 20 and 60. Training takes place every Wednesday from 7:00 p.m. to 10:00 p.m. in the primary school sports hall (near Barbarossaplatz). Afterwards we often get together for a beer in a pub around the corner and let the evening end relaxed. With us, having fun is paramount. Nevertheless, we are ambitious and would like to develop further as a team. That's why we always go full throttle during training. We are looking forward to further training partners on the field - so feel free to contact us!"
scjanus_description = "SC Janus e.V. is a non-profit sports club based in Cologne. Founded in 1980, it is the first and largest queer sports club in Europe and also has one of the largest memberships worldwide. As a sports club, it enables diverse and individual sporting experiences in a non-discriminatory environment, regardless of origin and social status, physical conditions, age, gender and sexual identity. Become a member and benefit from over 90 sports offers from over 45 sports seven days a week. Meet lots of new people who share your interests and passion for the sport. Be part of the community and part of the movement! SC Janus - more than sport."
esvolympia_description = "Welcome to our dynamic football sport club! We are passionate about the beautiful game and offer an exciting environment for players of all ages and abilities. With top-notch facilities and experienced coaches, our club provides comprehensive training programs, competitive leagues, and thrilling matches. Whether you're a beginner eager to learn or a seasoned player seeking to enhance your skills, our club is the perfect place to unleash your potential. Join our tight-knit community and experience the joy of teamwork, camaraderie, and the thrill of scoring goals. Let's kick off a memorable football journey together!"

photos = [martialarts1, basketball, bouldering, bouldering2, bouldering3, bouldering4, kegel1, bowling1, volleyball1, volleyball2, football1, football2]
clubs_descriptions = [kampf_description, kautz_description, boulderplanet_description, kletterfabrik_description, k11_description, stuntwerk_description, kegel_description, citybowling_description, wdr_description, scjanus_description, esvolympia_description]

clubs_names = ["Kampfsport Center Köln", "Kautz Sportcenter", "Boulderplanet", "Kletterfabrik Köln", "K11 | Bouldering in South City", "Stuntwerk Köln", "Kegelclub - Die Teddybären", "City-Bowling Köln", "WDR Volleyball", "SC Janus e. V.", "ESV Olympia Köln - Fußball"]
clubs_zip_codes = ["50823", "50939", "50825", "50825", "50678", "51063", "50676", "50674", "50676", "50674", "50739"]
clubs_streets = ["Venloer Str. 182", "Rhöndorfer Str. 10-13", "Oskar-Jäger-Straße 143H", "Oskar-Jäger-Straße 173", "Kyllstraße 11", "Schanzenstraße 6-20", "Agrippastraße 6", "Moselstraße 44", "Am Pantaleonsberg 3", "Hohenstaufenring 42", "Lämmerstr."]
clubs_phone_numbers = "123456789"
clubs_emails = "something@address.de"
user = User.create(email: "jack@jack.jack", password: "jackjack", first_name: "Jack", last_name: "Grey", zip_code: 42929, city: "Wermelskirchen", street: "Eich 34", phone_number: 123456789, roles: ['owner'])
clubs_names.each_with_index do |clubname, index|
  club = Club.new(name: clubname)
  club.zip_code = clubs_zip_codes[index]
  club.street = clubs_streets[index]
  club.phone_number = clubs_phone_numbers
  club.email = clubs_emails
  club.city = "Cologne"
  club.user = user
  club.status = true
  club.photos.attach(io: File.open(photos[index]), filename: "anything.jpeg", content_type: "image/jpeg")
  club.address = "#{club.street}, #{club.zip_code}, #{club.city}"
  club.description = clubs_descriptions[index]
  club.save
end
clubs = Club.all
venue1 = Venue.new(name: "MartialArts", category: "MartialArts", description: martialarts_description, price: 17.99, club: clubs[0])
venue1.photos.attach(io: File.open(martialarts1), filename: "anything.jpeg", content_type: "image/jpeg")
venue1.save
venue1.photos.attach(io: File.open(martialarts2), filename: "anything.jpeg", content_type: "image/jpeg")
venue1.save

venue2 = Venue.new(name: "Boulderplanet", category: "Bouldering", description: bouldering_description1, price: 15.99, club: clubs[2])
venue2.photos.attach(io: File.open(bouldering2), filename: "anything.jpeg", content_type: "image/jpeg")
venue2.save
venue2.photos.attach(io: File.open(bouldering), filename: "anything.jpeg", content_type: "image/jpeg")
venue2.save

venue3 = Venue.new(name: "Kletterfabrik Köln", category: "Bouldering", description: bouldering_description2, price: 70.99, club: clubs[3])
venue3.photos.attach(io: File.open(bouldering3), filename: "anything.jpeg", content_type: "image/jpeg")
venue3.save
venue3.photos.attach(io: File.open(bouldering4), filename: "anything.jpeg", content_type: "image/jpeg")
venue3.save

venue4 = Venue.new(name: "K11 | Bouldering in South City", category: "Bouldering", description: bouldering_description3, price: 33.99, club: clubs[4])
venue4.photos.attach(io: File.open(bouldering5), filename: "anything.jpeg", content_type: "image/jpeg")
venue4.save
venue4.photos.attach(io: File.open(bouldering6), filename: "anything.jpeg", content_type: "image/jpeg")
venue4.save

venue5 = Venue.new(name: "Stuntwerk Köln", category: "Bouldering", description: bouldering_description4, price: 11.10, club: clubs[5])
venue5.photos.attach(io: File.open(bouldering2), filename: "anything.jpeg", content_type: "image/jpeg")
venue5.save
venue5.photos.attach(io: File.open(bouldering3), filename: "anything.jpeg", content_type: "image/jpeg")
venue5.save

venue6 = Venue.new(name: "Kegelclub - Die Teddybären", category: "Kegel", description: kegel_descriptionv, price: 40.50, club: clubs[6])
venue6.photos.attach(io: File.open(kegel1), filename: "anything.jpeg", content_type: "image/jpeg")
venue6.save
venue6.photos.attach(io: File.open(kegel2), filename: "anything.jpeg", content_type: "image/jpeg")
venue6.save

venue7 = Venue.new(name: "City-Bowling Köln", category: "Bowling", description: bowling_description, price: 22.99, club: clubs[7])
venue7.photos.attach(io: File.open(bowling1), filename: "anything.jpeg", content_type: "image/jpeg")
venue7.save
venue7.photos.attach(io: File.open(bowling2), filename: "anything.jpeg", content_type: "image/jpeg")
venue7.save

venue8 = Venue.new(name: "WDR Volleyball", category: "Volleyball", description: volleyball_description, price: 21.99, club: clubs[8])
venue8.photos.attach(io: File.open(volleyball1), filename: "anything.jpeg", content_type: "image/jpeg")
venue8.save
venue8.photos.attach(io: File.open(volleyball2), filename: "anything.jpeg", content_type: "image/jpeg")
venue8.save

dsc = [swimming_description, football_description, volleyball_description, basketball_description]
photosave = [swimming1, swimming2, football1, football2, volleyball3, volleyball4, basketball3, basketball2]
scjenusvenues = ["Swimming", "Football", "Volleyball", "Basketball"]
scjenusvenues.each_with_index do |venue, index|
  venue_name = Venue.new(name: venue, category: venue, description: dsc[index], price: 26.99)
  venue_name.photos.attach(io: File.open(photosave[2 * index]), filename: "anything.jpeg", content_type: "image/jpeg")
  venue_name.club = clubs[9]
  venue_name.save!
  venue_name.photos.attach(io: File.open(photosave[2 * index + 1]), filename: "anything.jpeg", content_type: "image/jpeg")
  venue_name.save!
end
venue9 = Venue.new(name: "ESV Olympia Köln - Fußball", category: "Football", description: football_description, club: clubs[10])
venue9.photos.attach(io: File.open(football2), filename: "anything.jpeg", content_type: "image/jpeg")
venue9.save
venue9.photos.attach(io: File.open(football3), filename: "anything.jpeg", content_type: "image/jpeg")
venue9.save

kautz_desc = [squash_description, swimming_description, tennis_description, tabletennis_description, football_description, martialarts2_description]
kautz_photos = [squash1, squash2, swimming1, swimming2, tennis1, tennis2, tennistable1, tennistable2, football1, football2, martialarts1, martialarts2]
kautz_venues = ["Squash", "Swimming", "Tennis", "TableTennis", "Soccer", "MartialArts"]
kautz_venues.each_with_index do |venue, index|
  venue_name = Venue.new(name: venue, category: venue, description: kautz_desc[index], price: 22.99)
  venue_name.photos.attach(io: File.open(kautz_photos[2 * index]), filename: "anything.jpeg", content_type: "image/jpeg")
  venue_name.club = clubs[1]
  venue_name.save
  venue_name.photos.attach(io: File.open(kautz_photos[2 * index + 1]), filename: "anything.jpeg", content_type: "image/jpeg")
  venue_name.save!
end
