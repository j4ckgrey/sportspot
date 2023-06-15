require "open-uri"
Message.delete_all
Chatroom.delete_all
Review.delete_all
Booking.delete_all
Venue.delete_all
Club.delete_all
User.delete_all

basketball = URI.open("https://images.unsplash.com/photo-1519766304817-4f37bda74a26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
tennis = URI.open("https://images.unsplash.com/photo-1580763850522-504d40a05c50?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
basketball3 = URI.open("https://images.unsplash.com/photo-1583514735599-2ec2d33beaf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80")
bowling = URI.open("https://images.unsplash.com/photo-1545056453-f0359c3df6db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
martialarts = URI.open("https://plus.unsplash.com/premium_photo-1667941272664-9146446e1b7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
football1 = URI.open("https://images.unsplash.com/photo-1536639070539-43ec572aca6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
football2 = URI.open("https://images.unsplash.com/photo-1431324155629-1a6deb1dec8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
swimming = URI.open("https://images.unsplash.com/photo-1530549387789-4c1017266635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
volleyball1 = URI.open("https://images.unsplash.com/photo-1567781830902-685fb3401f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
volleyball2 = URI.open("https://images.unsplash.com/photo-1584692618238-72820dbd5c60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
basketball2 = URI.open("https://images.unsplash.com/photo-1546519638-68e109498ffc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2090&q=80")
bouldering = URI.open("https://images.unsplash.com/photo-1564769662533-4f00a87b4056?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2144&q=80")
bouldering2 = URI.open("https://images.unsplash.com/photo-1536639070539-43ec572aca6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")

photos = [basketball, tennis, basketball2, basketball3, bowling, martialarts, football1, football2, swimming, volleyball1, volleyball2]

description = [
  "The sports club with many sports courts has everything you need to get fit and have fun. Dedicated courts for volleyball, basketball, martialarts, and bowling keep everyone entertained while they work on their game. With plenty of seating and vending machines nearby, this gym is the perfect place to work out or relax after a hard day's play.",
  "Looking for a sports club with many sports courts? Look no further than the Sports Arenas Club. Our location provides access to volleyball, basketball, martialarts, and bowling courts, making it the perfect place to get your exercise fix. Plus, we’re located next to a pub so you can relax after your workout and catch up on your favorite TV show.",
  "The XYZ Sport Club is a vibrant and inclusive community for sports enthusiasts of all ages and skill levels. With state-of-the-art facilities and a passionate coaching staff, the club offers a wide range of sporting activities to cater to diverse interests. From soccer and basketball to swimming and tennis, members can engage in their favorite sports and develop their athletic abilities. The club fosters a supportive and competitive environment, encouraging teamwork, discipline, and personal growth. With regular training sessions, friendly matches, and exciting tournaments, the XYZ Sport Club provides an exhilarating platform for members to pursue their sporting dreams while fostering camaraderie and a healthy lifestyle.",
  "Welcome to Serenity Sports Club, where tranquility and athleticism harmonize to create a haven for sports enthusiasts seeking balance and well-being. Nestled amidst picturesque surroundings, Serenity Sports Club offers a unique blend of physical activity and serenity for individuals seeking holistic development.
  Our club is designed with a focus on promoting a healthy mind and body. Immerse yourself in our well-manicured grounds, where you can engage in a variety of sports such as tennis, golf, swimming, and yoga. Our state-of-the-art facilities are designed to enhance your performance and provide a serene environment where you can find inner peace while honing your athletic skills.
  At Serenity Sports Club, we understand the importance of a well-rounded approach to fitness. Our experienced coaches and instructors are dedicated to guiding you on your journey to physical and mental well-being. From personalized training programs to mindfulness classes, we offer a range of activities that cater to individuals of all ages and fitness levels.
  Beyond the sports offerings, Serenity Sports Club is a sanctuary for relaxation and rejuvenation. Unwind at our luxurious spa and wellness center, indulge in nutritious cuisine at our health-conscious cafe, or simply find solace in the serene surroundings that encourage moments of reflection and tranquility.
  Join Serenity Sports Club today and embark on a transformative experience where athletic pursuits and inner peace merge. Embrace a lifestyle that nurtures your body, mind, and soul, and surround yourself with like-minded individuals who share your passion for holistic well-being. Discover the perfect balance at Serenity Sports Club.",
  "Welcome to Vitality Fitness Club, your premier destination for a healthy and active lifestyle! Situated in a prime location, Vitality Fitness Club is a haven for fitness enthusiasts of all ages and abilities.
  Our club is dedicated to providing top-notch facilities and cutting-edge equipment to support your fitness journey. From spacious and well-equipped workout areas to specialized studios for group fitness classes, we have everything you need to achieve your fitness goals. Whether you're into strength training, cardio workouts, yoga, or spinning, our diverse range of fitness programs cater to every interest and fitness level.
  At Vitality Fitness Club, we prioritize personalized attention and professional guidance. Our team of certified trainers is passionate about helping you succeed. They will work closely with you to develop customized workout plans, provide expert coaching, and offer nutritional advice to optimize your results. With their support and motivation, you'll stay inspired and on track to reach new heights of fitness.
  Beyond the physical benefits, Vitality Fitness Club is a community that fosters a positive and supportive environment. Engage with fellow members, participate in group challenges, and attend workshops and seminars on wellness and self-improvement. We believe that a strong community is the foundation for long-term success and enjoyment in your fitness journey.
  Join Vitality Fitness Club today and embark on a transformative fitness experience. Discover the joy of living a healthy and balanced life, and unlock your full potential in a vibrant and inclusive community. Your path to vitality starts here!",
  "Welcome to Swift Strikers Sports Club, where passion and teamwork fuel success on and off the field! Nestled in a vibrant neighborhood, Swift Strikers Sports Club is the ultimate destination for athletes looking to elevate their game and build lifelong connections.
  Our club boasts state-of-the-art facilities tailored to a variety of sports, ensuring that every member finds their perfect match. Whether you're drawn to the fast-paced action of soccer, the strategic maneuvers of basketball, or the finesse of volleyball, Swift Strikers Sports Club offers pristine fields and courts that inspire peak performance.
  At Swift Strikers, we believe in the power of teamwork and personal growth. Our highly skilled coaches are dedicated to nurturing individual talent while instilling values of discipline, sportsmanship, and resilience. Through comprehensive training programs and personalized attention, we empower athletes of all ages and skill levels to excel both on and off the field.
  Beyond training and competition, Swift Strikers Sports Club is a tight-knit community that celebrates the spirit of sportsmanship and camaraderie. We organize regular social events, charity drives, and team-building activities, fostering lasting friendships and creating memories that go beyond the game.
  Join Swift Strikers Sports Club today and experience the thrill of belonging to a passionate and driven community. Whether you're a young athlete with dreams of reaching the professional stage or an adult looking to stay active and connect with like-minded individuals, our club is your springboard to success. Get ready to unleash your full potential and become a part of the Swift Strikers family!",
  "Welcome to Stellar Sports Club, where excellence and camaraderie take center stage! Situated in a picturesque location, Stellar Sports Club is a haven for sports enthusiasts seeking a dynamic and fulfilling experience.
  Our club is known for its world-class facilities that cater to a diverse range of sporting disciplines. Whether you're a fan of soccer, cricket, rugby, tennis, or even equestrian sports, Stellar Sports Club offers top-tier amenities designed to enhance your performance and enjoyment. From meticulously maintained fields and courts to cutting-edge training equipment, we spare no effort in providing the best sporting environment.
  At Stellar Sports Club, we believe in nurturing talent and fostering a strong sense of community. Our experienced and passionate coaches are dedicated to helping athletes of all levels reach their full potential. Whether you're an aspiring professional or simply looking to have fun and stay fit, our programs are tailored to meet your individual goals and abilities.
  Beyond the sports itself, Stellar Sports Club is a hub for social interaction and personal growth. Our club hosts regular events, tournaments, and social gatherings, offering opportunities to connect with fellow sports enthusiasts, build lasting friendships, and celebrate achievements together.
  Join Stellar Sports Club today and embark on an exhilarating journey of athletic excellence. Whether you're honing your skills, competing at a high level, or simply enjoying the thrill of sports, our club promises an unforgettable experience. Discover your true sporting potential and be a part of our stellar community!",
  "Welcome to Apex Athletics, the premier sport club dedicated to nurturing talent and fostering a passion for sports! Located in the heart of the city, Apex Athletics is a vibrant and inclusive community where athletes of all ages and skill levels come together to train, compete, and grow.
  Our state-of-the-art facility boasts top-notch amenities, including well-equipped gyms, cutting-edge training equipment, and meticulously maintained playing fields. Whether you're a beginner looking to develop fundamental skills or a seasoned athlete aiming for the highest level of performance, we have programs tailored to suit your needs.
  At Apex Athletics, we offer a wide range of sports disciplines to cater to diverse interests. From soccer, basketball, and tennis to swimming, gymnastics, and martial arts, our experienced coaches provide expert guidance and create a supportive environment to help you achieve your goals. We emphasize holistic development, focusing not only on physical prowess but also on character-building, teamwork, and sportsmanship.
  For our younger athletes, we have a comprehensive youth development program that introduces them to various sports, fostering a love for an active lifestyle and instilling values of discipline and resilience. Our adult leagues and recreational programs offer opportunities for friendly competition and social engagement, ensuring a fulfilling experience for athletes of all ages.
  Join the Apex Athletics family today and unlock your full athletic potential. Experience the thrill of pushing boundaries, making lifelong friends, and creating unforgettable memories. Get ready to reach new heights with us at Apex Athletics!"
]

clubs_names = ["Kampfsport Center Köln", "Kautz Sportcenter", "Boulderplanet", "Kletterfabrik Köln", "K11 | Bouldering in South City", "Stuntwerk Köln", "Kegelclub - Die Teddybären", "City-Bowling Köln", "WDR Volleyball", "SC Janus e. V.", "ESV Olympia Köln - Fußball", ]
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
  club.description = description
  club.user = user
  club.status = true
  club.photos.attach(io: photos[index], filename: "anything.jpeg", content_type: "image/jpeg")
  club.address = "#{club.street}, #{club.zip_code}, #{club.city}"
  club.description = description.sample
  club.save
end
clubs = Club.all
venue1= Venue.new(name: "MartialArts", category: "MartialArts", description: description.sample, price: 17.99, club: clubs[0])

venue1.save
venue2 = Venue.create(name: "Boulderplanet", category: "Bouldering", description: description.sample, price: 15.99, club: clubs[2])

venue2.save
venue3 = Venue.create(name: "Kletterfabrik Köln", category: "Bouldering", description: description.sample, price: 70.99, club: clubs[3])

venue3.save
venue4 = Venue.create(name: "K11 | Bouldering in South City", category: "Bouldering", description: description.sample, price: 33.99, club: clubs[4])

venue4.save
venue5 = Venue.create(name: "Stuntwerk Köln", category: "Bouldering", description: description.sample, price: 11.10, club: clubs[5])

venue5.save
venue6 = Venue.create(name: "Kegelclub - Die Teddybären", category: "Kegel", description: description.sample, price: 40.50, club: clubs[6])

venue6.save
venue7 = Venue.create(name: "City-Bowling Köln", category: "Bowling", description: description.sample, price: 22.99, club: clubs[7])

venue7.save
venue8 = Venue.create(name: "WDR Volleyball", category: "Volleyball", description: description.sample, price: 21.99, club: clubs[8])

venue8.save

scjenusvenues = %w[Swimming Football Volleyball Basketball]
scjenusvenues.each do |venue|
  venue_name = Venue.new(name: venue, category: venue, description: description.sample)

  venue_name.club = clubs[9]
  venue_name.save
end
venue9 = Venue.create(name: "ESV Olympia Köln - Fußball", category: "Football", description: description.sample, club: clubs[10])

kautz_venues = %w[Squash Swimming Tennis TableTennis Soccer MartialArts]
kautz_venues.each do |venue|
  venue_name = Venue.new(name: venue, category: venue, description: description.sample)

  venue_name.club = clubs[1]
  venue_name.save
end
