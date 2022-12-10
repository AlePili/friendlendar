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
user1 = User.new(first_name: "Lukas", last_name: "Musilek", email: "admin@admin.com", password: "123456")
user1.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user1.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670064833/development/Alessandra_j6ad43.jpg")
user2 = User.new(first_name: "Allie", last_name: "Pilero", email: "admin@admino.com", password: "1234567")
user2.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user2.save


file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670064833/development/108416241_q8vw70.jpg")
user3 = User.new(first_name: "Adriana", last_name: "Harseva", email: "admin3@admino.com", password: "1234567")
user3.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user3.save

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670064833/development/Kamelya_otbuva.jpg")
user4 = User.new(first_name: "Kamelya", last_name: "Kerum", email: "admin4@admino.com", password: "1234567")
user4.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user4.save
# user = User.create!(email: "admin@admin.com", password: "123456")
# user2 = User.create!(email: "admin@admino.com", password: "1234567")
# user3 = User.create!(email: "admin3@admino.com", password: "1234567")
# user4 = User.create!(email: "admin4@admino.com", password: "1234567")

friendship = Friendship.create!(asker: user1, receiver: user2)
friendship2 = Friendship.create!(asker: user1, receiver: user3)
friendship3 = Friendship.create!(asker: user1, receiver: user4)


puts "creating events"
file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665336/development/rachel-park-hrlvr2ZlUNk-unsplash_dgug4n.jpg")
brunch = Event.create(title: "Botomless Brunch", location: "7 Boundary St, London E2 7JE", category: "Sunday Funday", description: "Come join me for botomless brunch and Hoxton Shoreditch ;)", start_time: DateTime.new(2022,12,23,4,5,6), availability:2, user:user1)
brunch.photo.attach(io: file, filename: "brunch.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665512/development/download_4_itvh24.jpg")
candlelit_concert = Event.create(title: "Hans Zimmer Candlelit Concert", location: "10 Godliman St, London EC4V 5AJ", category: "Music", description: "I have two tickets for the Hans Zimmer tribute in St. Pauls. Supposed to be lit (no pun intended)", start_time: DateTime.new(2022,2,7,5,2,6), availability:2, user:user1)
candlelit_concert.photo.attach(io: file, filename: "candlelit.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665640/development/cristian-castillo-73pyV0JJOmE-unsplash_jac8hb.jpg")
walking_dog = Event.create(title: "Dog walkies", location: "5 Coal Lane, London SW9 8GG", category: "Sunday Funday", description: "Who wants to join me on a hot girl walk with Ruby", start_time: DateTime.new(2022,12,17,1,2,0), availability:5, user:user1)
walking_dog.photo.attach(io: file, filename: "walkingdog.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665707/development/nathan-lemon-W7nbakRx1Ks-unsplash_qg4dac.jpg")
christmas_fundraiser = Event.create(title: "Christmas Fundraiser", location: "5 Coal Lane, London SW9 8GG", category: "Charity", description: "I am doing a charity fundraiser to help the homeless people this winter. I'll be holding a second hand market in my place, please bring anything you wish to donate. All the proceeds would go towards booking hotels for the homeless on Christmas day", start_time: DateTime.new(2022,12,17,5,2,6), availability: 99, user:user1)
christmas_fundraiser.photo.attach(io: file, filename: "christmas_fundraiser.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665919/development/manuel-nageli-NsgsQjHA1mM-unsplash_1_alob0p.jpg")
vivaldi = Event.create(title: "Vivaldi - The Four Seasons by Candlelight", location: "Freemasons Hall 60 Great Queen Street London WC2B 5AZ", category: "Music", description: "Prepare yourself for a musical feast in the majestic, glistening, gilded setting of The Grand Temple at Freemasons' Hall, in the heart of Covent Garden. Sit back and relax as the joys of Vivaldi's exuberant 'Four Seasons' are brought to you by a group of London's finest musicians from Belmont Ensemble of London and Trafalgar Sinfonia .", start_time: DateTime.new(2022,12,31,14,5,6), availability:1, user:user2)
vivaldi.photo.attach(io: file, filename: "vivaldi.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670665964/development/raphael-lovaski-RjD01Is-KnI-unsplash_x1qega.jpg")
swiftogeddon = Event.create(title: "non-stop Swifty all night", location: "Troxy 490 Commercial Road London E1 0HX", category: "Music", description: "Non-stop Swifty all night", start_time: DateTime.new(2023,2,7,5,2,6), availability:6, user:user2)
swiftogeddon.photo.attach(io: file, filename: "swiftogeddon.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670666007/development/raphael-schaller-zbUvPw1wUIw-unsplash_mzyncs.jpg")
dj_nights = Event.create(title: "THE ICONIC SAXON SOUND DJS AT BOISDALE!", location: "15 Cabot Square London E14 4QT", category: "Nightclub", description: "Who wants to join me on a hot girl walk with Ruby", start_time: DateTime.new(2022,12,27,1,2,0), availability:4, user:user2)
dj_nights.photo.attach(io: file, filename: "dj_nights.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670666075/development/brooke-lark-aGjP08-HbYY-unsplash_prqzul.jpg")
reminisce_brunch = Event.create(title: "This Soca Brunch takes us back to Carnival", location: "95-97 Clapham High Street London SW4 7TB", category: "Food", description: "J﻿oin us for this long-awaited brunch in our series!", start_time: DateTime.new(2022,12,15,5,2,6), availability: 15, user:user2)
reminisce_brunch.photo.attach(io: file, filename: "reminisce_brunch.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670666351/development/kelsey-knight-udj2tD3WKsY-unsplash_gcg1ix.jpg")
wineknow = Event.create(title: "Wine Tasting", location: "140 Walworth Road London SE17 1JL", category: "Drinks", description: "Come join me for botomless brunch and Hoxton Shoreditch ;)", start_time: DateTime.new(2022,12,31,11,5,6), availability:2, user:user3)
wineknow.photo.attach(io: file, filename: "wineknow.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667461/development/ellena-mcguinness-sT1r3QCvor4-unsplash_h3eood.jpg")
raclette_night = Event.create(title: "Raclettes & Fondue Nights are back!", location: "56 Newington Grn 56 Newington Green London N16 9PX", category: "Food", description: "Get your fingers dirty! Book your Cheesy Nights with deposit", start_time: DateTime.new(2022,2,7,5,2,6), availability:2, user:user3)
raclette_night.photo.attach(io: file, filename: "rraclette_night.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667526/development/adam-jaime-dmkmrNptMpw-unsplash_lednus.jpg")
whisky_weekender = Event.create(title: "London Whisky Weekender 2023", location: "The Kia Oval London SE11 5SS", category: "Drinks", description: "If you haven’t been to one of our festivals before you are in for a treat!", start_time: DateTime.new(2022,12,19,1,2,0), availability:5, user:user3)
whisky_weekender.photo.attach(io: file, filename: "whisky_weekender.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667573/development/murillo-de-paula-o2FCfhNSjPo-unsplash_fniiix.jpg")
joy_riders = Event.create(title: "Women only Learn to Ride & Basic Cycle Skills", location: "Leyton Jubilee Park Seymour road London E10 7BL", category: "Sports", description: "FREE Women Learn to ride sessions starting October,FREE Bikes to borrow Gain confidence and learn to ride safely with Qualified Instructors", start_time: DateTime.new(2023,12,18,4,5,6), availability:30, user:user4)
joy_riders.photo.attach(io: file, filename: "joy_riders.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667692/development/oksana-taran-xB4ExGcUai0-unsplash_tume90.jpg")
yoga = Event.create(title: "Yoga", location: "130 Kingsland High Street London E8 2LQ", category: "Sports", description: "Every Tuesday - One hour of Hatha and Ashtanga Yoga. Every level welcome. Mats will be provided.", start_time: DateTime.new(2022,12,21,5,2,6), availability:2, user:user4)
yoga.photo.attach(io: file, filename: "yoga.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667736/development/miguel-a-amutio-Y0woUmyxGrw-unsplash_ki38oo.jpg")
rise_run = Event.create(title: "Rise & Run ", location: "60 High Timber Street London EC4V 3EJ", category: "Sports", description: "Rise & Run is returning to London! Join us for a 5km social run along the scenic River Thames.", start_time: DateTime.new(2022,12,23,1,2,0), availability:5, user:user4)
rise_run.photo.attach(io: file, filename: "rise_Run.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dopqijnpv/image/upload/v1670667831/development/daniels-joffe-pkDKjsPAAi4-unsplash_dno04s.jpg")
felt_robins = Event.create(title: "Felt Robins", location: "25 Grove Road London E3 5RP", category: "Hobbies", description: "Let's Make Felt Robins for Christmas Tree - Urban Makers Christmas Market", start_time: DateTime.new(2022,12,24,5,2,6), availability: 99, user:user4)
felt_robins.photo.attach(io: file, filename: "felt_robins", content_type: "image/png")



puts "Finished!"
