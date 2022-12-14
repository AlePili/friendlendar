# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Event.destroy_all
Friendship.destroy_all
User.destroy_all

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670064833/development/lukas_jmhw4z.jpg")
user1 = User.new(first_name: "Lukas", last_name: "Musilek", email: "lukas@admin.com", password: "123456")
user1.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user1.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670064833/development/Alessandra_j6ad43.jpg")
user2 = User.new(first_name: "Allie", last_name: "Pilero", email: "allie@admino.com", password: "1234567")
user2.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user2.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670064833/development/108416241_q8vw70.jpg")
user3 = User.new(first_name: "Adriana", last_name: "Harseva", email: "adriana@admin.com", password: "1234567")
user3.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user3.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670064833/development/Kamelya_otbuva.jpg")
user4 = User.new(first_name: "Kamelya", last_name: "Kerum", email: "kamelya@admin.com", password: "1234567")
user4.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user4.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670793094/development/68028382_asnu6l.jpg")
liubov = User.new(first_name: "Liubov", last_name: "Koval", email: "liubov@admin.com", password: "1234567")
liubov.photo.attach(io: file, filename: "user.png", content_type: "image/png")
liubov.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670793251/development/sftdd9zqyvxbxoei0uij_ihohi6.jpg")
koji = User.new(first_name: "Koji", last_name: "Samuels", email: "koji@admin.com", password: "1234567")
koji.photo.attach(io: file, filename: "user.png", content_type: "image/png")
koji.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670793418/development/51661234_gcf6ex.jpg")
angus = User.new(first_name: "Angus", last_name: "Spawton-Rice", email: "angus@admin.com", password: "1234567")
angus.photo.attach(io: file, filename: "user.png", content_type: "image/png")
angus.save

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657883775/hjmhwxohl6kfreyqqhz2.jpg")
angelee = User.new(first_name: "Angelee", last_name: "Otic", email: "angelee@admin.com", password: "1234567")
angelee.photo.attach(io: file, filename: "user.png", content_type: "image/png")
angelee.save

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657818447/yizwowjeer8ulyl9uxsn.jpg")
aziz = User.new(first_name: "Aziz", last_name: "Miah", email: "aziz@admin.com", password: "1234567")
aziz.photo.attach(io: file, filename: "user.png", content_type: "image/png")
aziz.save


file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1668434991/itwo74qthle9jvddynty.jpg")
magdalena = User.new(first_name: "Magda", last_name: "Krasicka", email: "magdalena@admin.com", password: "1234567")
magdalena.photo.attach(io: file, filename: "user.png", content_type: "image/png")
magdalena.save

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657975763/jtyfmxbptx81zbkcsygd.jpg")
conan = User.new(first_name: "Conan", last_name: "Duval-Manahan", email: "conan@admin.com", password: "1234567")
conan.photo.attach(io: file, filename: "user.png", content_type: "image/png")
conan.save

file = URI.open("https://avatars.githubusercontent.com/u/108522382?v=4")
ilkay = User.new(first_name: "Ilkay", last_name: "Degirmencioglu", email: "ilkay@admin.com", password: "1234567")
ilkay.photo.attach(io: file, filename: "user.png", content_type: "image/png")
ilkay.save

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657916662/w251pczbf6dwzmii9iqb.jpg")
abdul = User.new(first_name: "Abdul", last_name: "Elmi", email: "abdul@admin.com", password: "1234567")
abdul.photo.attach(io: file, filename: "user.png", content_type: "image/png")
abdul.save

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657918524/rv35r7jlktdon6uw8c6c.jpg")
gianluca = User.new(first_name: "Gianluca", last_name: "Galli", email: "gianluca@admin.com", password: "1234567")
gianluca.photo.attach(io: file, filename: "user.png", content_type: "image/png")
gianluca.save

file = URI.open("https://avatars.githubusercontent.com/u/74965932?v=4")
mustafa = User.new(first_name: "Mustafa", last_name: "Tahir", email: "mustafa@admin.com", password: "1234567")
mustafa.photo.attach(io: file, filename: "user.png", content_type: "image/png")
mustafa.save

file = URI.open("https://ca.slack-edge.com/T02NE0241-UP55AA2VC-585a0a900904-512")
david = User.new(first_name: "David", last_name: "Egerton-Smith", email: "david@admin.com", password: "1234567")
david.photo.attach(io: file, filename: "user.png", content_type: "image/png")
david.save

file = URI.open("https://ca.slack-edge.com/T02NE0241-U01JGERCQKW-57eda5430b68-512")
alex = User.new(first_name: "Alex", last_name: "Morey", email: "alex@admin.com", password: "1234567")
alex.photo.attach(io: file, filename: "user.png", content_type: "image/png")
alex.save

file = URI.open("https://ca.slack-edge.com/T02NE0241-U016TFXV4S2-3098e8dd7db1-512")
bruno = User.new(first_name: "Bruno", last_name: "Talarico", email: "bruno@admin.com", password: "1234567")
bruno.photo.attach(io: file, filename: "user.png", content_type: "image/png")
bruno.save

file = URI.open("https://ca.slack-edge.com/T02NE0241-U03BFENH05U-615f4497b344-512")
craig = User.new(first_name: "Craig", last_name: "Norford", email: "craig@admin.com", password: "1234567")
craig.photo.attach(io: file, filename: "user.png", content_type: "image/png")
craig.save

file = URI.open("https://ca.slack-edge.com/T02NE0241-U01BYG48DQT-51593ec58848-512")
juan = User.new(first_name: "Juan", last_name: "Garcia", email: "juan@admin.com", password: "1234567")
juan.photo.attach(io: file, filename: "user.png", content_type: "image/png")
juan.save

# Friendships

friendship = Friendship.create!(asker: user1, receiver: user2)
friendship2 = Friendship.create!(asker: user1, receiver: user3)
friendship3 = Friendship.create!(asker: user1, receiver: user4)
friendship4 = Friendship.create!(asker: user3, receiver: user4)
friendship5 = Friendship.create!(asker: user3, receiver: user2)
friendship6 = Friendship.create!(asker: user3, receiver: koji)
friendship7 = Friendship.create!(asker: user3, receiver: angus)
friendship9 = Friendship.create!(asker: user3, receiver: angelee)

puts "creating events"
file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665336/development/rachel-park-hrlvr2ZlUNk-unsplash_dgug4n.jpg")
brunch = Event.create(title: "Botomless Brunch", location: "7 Boundary, E2 7JE", category: "Sunday Funday", description: "Come join me for botomless brunch and Hoxton Shoreditch ;)", start_time: DateTime.new(2022,12,23,4,5,6), availability:2, user:user1)
brunch.photo.attach(io: file, filename: "brunch.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665512/development/download_4_itvh24.jpg")
candlelit_concert = Event.create(title: "Hans Zimmer Candlelit Concert",
  location: "10 Godliman St,  EC4V 5AJ",
  category: "Music",
  description: "I have two tickets for the Hans Zimmer tribute in St. Pauls. Supposed to be lit (no pun intended) Below are the details for the event:
⭐️ Candlelight concerts bring the magic of a live, multi-sensory musical experience to awe-inspiring locations never before used for this purpose in London. Buy your tickets now to discover the music of Hans Zimmer's Best Works at Central Hall Westminster under the gentle glow of candlelight.

📍 Venue: Central Hall Westminster
📅 Dates and times: various dates
⏳ Duration: 60 minutes (doors open 45 mins prior to the start time and late entry is not permitted)
👤 Age requirement: 8+. Anyone under the age of 16 must be accompanied by an adult
♿️ Accessibility: this venue is wheelchair accessible

Programme

Sherlock Holmes Discombobulate
Inception Time
Gladiator Now We Are Free
Pearl Harbor Tennessee",
start_time: DateTime.new(2022,2,7,5,2,6),
availability:2,
user:user1)
candlelit_concert.photo.attach(io: file, filename: "candlelit.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665640/development/cristian-castillo-73pyV0JJOmE-unsplash_jac8hb.jpg")
walking_dog = Event.create(title: "Dog walkies", location: "5 Coal Lane, SW9 8GG", category: "Sunday Funday", description: "Who wants to join me on a hot girl walk with Ruby", start_time: DateTime.new(2022,12,17,1,2,0), availability:5, user:user1)
walking_dog.photo.attach(io: file, filename: "walkingdog.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665707/development/nathan-lemon-W7nbakRx1Ks-unsplash_qg4dac.jpg")
christmas_fundraiser = Event.create(title: "Christmas Fundraiser", location: "5 Coal Lane SW9 8GG", category: "Charity", description: "I am doing a charity fundraiser to help the homeless people this winter. I'll be holding a second hand market in my place, please bring anything you wish to donate. All the proceeds would go towards booking hotels for the homeless on Christmas day", start_time: DateTime.new(2022,12,17,5,2,6), availability: 99, user:user1)
christmas_fundraiser.photo.attach(io: file, filename: "christmas_fundraiser.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665919/development/manuel-nageli-NsgsQjHA1mM-unsplash_1_alob0p.jpg")
vivaldi = Event.create(title: "Vivaldi - The Four Seasons by Candlelight", location: "Freemasons Hall 60, WC2B 5AZ", category: "Music", description: "Prepare yourself for a musical feast in the majestic, glistening, gilded setting of The Grand Temple at Freemasons' Hall, in the heart of Covent Garden. Sit back and relax as the joys of Vivaldi's exuberant 'Four Seasons' are brought to you by a group of London's finest musicians from Belmont Ensemble of London and Trafalgar Sinfonia .", start_time: DateTime.new(2022,12,31,14,5,6), availability:1, user:user2)
vivaldi.photo.attach(io: file, filename: "vivaldi.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665964/development/raphael-lovaski-RjD01Is-KnI-unsplash_x1qega.jpg")
swiftogeddon = Event.create(title: "non-stop Swifty all night", location: "490 Commercial Road, E1 0HX", category: "Music", description: "Non-stop Swifty all night", start_time: DateTime.new(2023,2,7,5,2,6), availability:6, user:user2)
swiftogeddon.photo.attach(io: file, filename: "swiftogeddon.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670666007/development/raphael-schaller-zbUvPw1wUIw-unsplash_mzyncs.jpg")
dj_nights = Event.create(title: "The Iconic Saxon Sound at Boisdale!", location: "15 Cabot Square, E14 4QT", category: "Nightclub", description: "Who wants to join me on a hot girl walk with Ruby", start_time: DateTime.new(2022,12,27,1,2,0), availability:4, user:user2)
dj_nights.photo.attach(io: file, filename: "dj_nights.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670666075/development/brooke-lark-aGjP08-HbYY-unsplash_prqzul.jpg")
reminisce_brunch = Event.create(title: "This Soca Brunch takes us back to Carnival", location: "7 Clapham High St, SW4 7TB", category: "Food", description: "J﻿oin us for this long-awaited brunch in our series!", start_time: DateTime.new(2022,12,15,5,2,6), availability: 15, user:angelee)
reminisce_brunch.photo.attach(io: file, filename: "reminisce_brunch.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670666351/development/kelsey-knight-udj2tD3WKsY-unsplash_gcg1ix.jpg")
wineknow = Event.create(title: "Wine Tasting", location: "140 Walworth Road, SE17 1JL", category: "Drinks", description: "Come join me for botomless brunch and Hoxton Shoreditch ;)", start_time: DateTime.new(2022,12,31,11,5,6), availability:2, user:user3)
wineknow.photo.attach(io: file, filename: "wineknow.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667461/development/ellena-mcguinness-sT1r3QCvor4-unsplash_h3eood.jpg")
raclette_night = Event.create(title: "Raclettes & Fondue Nights are back!", location: "56 Newington Grn 56, N16 9PX", category: "Food", description: "Get your fingers dirty! Book your Cheesy Nights with deposit", start_time: DateTime.new(2022,2,7,5,2,6), availability:2, user:angus)
raclette_night.photo.attach(io: file, filename: "rraclette_night.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667526/development/adam-jaime-dmkmrNptMpw-unsplash_lednus.jpg")
whisky_weekender = Event.create(title: "London Whisky Weekender 2023", location: "The Kia Oval, SE11 5SS", category: "Drinks", description: "If you haven’t been to one of our festivals before you are in for a treat!", start_time: DateTime.new(2022,12,19,1,2,0), availability:5, user:user3)
whisky_weekender.photo.attach(io: file, filename: "whisky_weekender.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667573/development/murillo-de-paula-o2FCfhNSjPo-unsplash_fniiix.jpg")
joy_riders = Event.create(title: "Women only Learn to Ride & Basic Cycle Skills", location: "Leyton Jubilee Park, E10 7BL", category: "Sports", description: "FREE Women Learn to ride sessions starting October,FREE Bikes to borrow Gain confidence and learn to ride safely with Qualified Instructors", start_time: DateTime.new(2023,12,18,4,5,6), availability:30, user:user4)
joy_riders.photo.attach(io: file, filename: "joy_riders.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667692/development/oksana-taran-xB4ExGcUai0-unsplash_tume90.jpg")
yoga = Event.create(title: "Yoga", location: "130 Kingsland High Street, E8 2LQ", category: "Sports", description: "Every Tuesday - One hour of Hatha and Ashtanga Yoga. Every level welcome. Mats will be provided.", start_time: DateTime.new(2022,12,21,5,2,6), availability:2, user:user4)
yoga.photo.attach(io: file, filename: "yoga.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667736/development/miguel-a-amutio-Y0woUmyxGrw-unsplash_ki38oo.jpg")
rise_run = Event.create(title: "Rise & Run ", location: "60 High Timber Street, EC4V 3EJ", category: "Sports", description: "Rise & Run is returning to London! Join us for a 5km social run along the scenic River Thames.", start_time: DateTime.new(2022,12,23,1,2,0), availability:5, user:user4)
rise_run.photo.attach(io: file, filename: "rise_Run.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667831/development/daniels-joffe-pkDKjsPAAi4-unsplash_dno04s.jpg")
felt_robins = Event.create(title: "Felt Robins", location: "25 Grove Road, E3 5RP", category: "Hobbies", description: "Let's Make Felt Robins for Christmas Tree - Urban Makers Christmas Market", start_time: DateTime.new(2022,12,24,5,2,6), availability: 99, user:abdul)
felt_robins.photo.attach(io: file, filename: "felt_robins", content_type: "image/png")



puts "Finished!"
