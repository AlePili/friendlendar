# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Event.destroy_all
Friendship.destroy_all
User.destroy_all


user = User.create!(email: "admin@admin.com", password: "123456")
user2 = User.create!(email: "admin@admino.com", password: "1234567")
user3 = User.create!(email: "admin3@admino.com", password: "1234567")
user4 = User.create!(email: "admin4@admino.com", password: "1234567")

friendship = Friendship.create!(asker: user, receiver: user2)
friendship2 = Friendship.create!(asker: user, receiver: user3)
friendship3 = Friendship.create!(asker: user, receiver: user4)




puts "creating events"
brunch = {title: "Botomless Brunch", location: "7 Boundary St, London E2 7JE", category: "Sunday Funday", description: "Come join me for botomless brunch and Hoxton Shoreditch ;)", start_time: DateTime.new(2022,2,3,4,5,6), availability:2, user:user}
candlelight_concert = {title: "Hans Zimmer Candlelight Concert", location: "10 Godliman St, London EC4V 5AJ", category: "Music", description: "I have two tickets for the Hans Zimmer tribute in St. Pauls. Supposed to be lit (no pun intended)", start_time: DateTime.new(2022,2,7,5,2,6), availability:2, user:user}
walking_dog = {title: "Dog walkies", location: "5 Coal Lane, London SW9 8GG", category: "Sunday Funday", description: "Who wants to join me on a hot girl walk with Ruby", start_time: DateTime.new(2022,2,7,1,2,0), availability:5, user:user}
christmas_fundraiser = {title: "Christmas Fundraiser", location: "5 Coal Lane, London SW9 8GG", category: "Charity", description: "I am doing a charity fundraiser to help the homeless people this winter. I'll be holding a second hand market in my place, please bring anything you wish to donate. All the proceeds would go towards booking hotels for the homeless on Christmas day", start_time: DateTime.new(2022,12,7,5,2,6), availability: 99, user:user}

[brunch, candlelight_concert, walking_dog, christmas_fundraiser].each do |attributes|
  event = Event.create!(attributes)
  puts "Created #{event.title}"
end


puts "creating events"
vivaldi = {title: "Vivaldi - The Four Seasons by Candlelight", location: "Freemasons Hall 60 Great Queen Street London WC2B 5AZ", category: "Music", description: "Prepare yourself for a musical feast in the majestic, glistening, gilded setting of The Grand Temple at Freemasons' Hall, in the heart of Covent Garden. Sit back and relax as the joys of Vivaldi's exuberant 'Four Seasons' are brought to you by a group of London's finest musicians from Belmont Ensemble of London and Trafalgar Sinfonia .", start_time: DateTime.new(2022,2,3,4,5,6), availability:1, user:user2}
swiftogeddon = {title: "non-stop Swifty all night", location: "Troxy 490 Commercial Road London E1 0HX", category: "DJ", description: "non-stop Swifty all night", start_time: DateTime.new(2022,2,7,5,2,6), availability:6, user:user2}
dj_nights = {title: "THE ICONIC SAXON SOUND DJS AT BOISDALE!!", location: "Boisdale of Canary Wharf 15 Cabot Square London E14 4QT", category: "Nightclub", description: "Who wants to join me on a hot girl walk with Ruby", start_time: DateTime.new(2022,2,7,1,2,0), availability:4, user:user2}
reminisce_brunch = {title: "This Soca Brunch takes us back to Carnival", location: "Revolution London - Clapham High St 95-97 Clapham High Street London SW4 7TB", category: "Food&Brunch", description: "J﻿oin us for this long-awaited brunch in our series!", start_time: DateTime.new(2022,12,7,5,2,6), availability: 15, user:user2}

[vivaldi, swiftogeddon, dj_nights, reminisce_brunch].each do |attributes|
  event = Event.create!(attributes)
  puts "Created #{event.title}"
end

puts "creating events"
wineknow = {title: "Wine know-how for all || Wine tasting events bringing more inclusivity and less formality || Ticket price includes 6 wines", location: "The Manor 140 Walworth Road London SE17 1JL", category: "Wine", description: "Come join me for botomless brunch and Hoxton Shoreditch ;)", start_time: DateTime.new(2022,2,3,4,5,6), availability:2, user:user3}
raclette_night = {title: "Raclettes & Fondue Nights are back!", location: "56 Newington Grn 56 Newington Green London N16 9PX", category: "Food", description: "Get your fingers dirty! Book your Cheesy Nights with deposit", start_time: DateTime.new(2022,2,7,5,2,6), availability:2, user:user3}
whisky_weekender = {title: "London Whisky Weekender 2023", location: "The Kia Oval Surrey County Cricket Club Kennington Oval London SE11 5SS", category: "Sprits", description: "If you haven’t been to one of our festivals before you are in for a treat!", start_time: DateTime.new(2022,2,7,1,2,0), availability:5, user:user3}
interlude = {title: "Interlude", location: "The Mix Dalston 588A Kingsland Road London E8 4AH", category: "Wine", description: "★ CC EventsUK - Presents 90's Interlude (An Exclusive 90's/00's Themed Party) ★", start_time: DateTime.new(2022,12,7,5,2,6), availability: 99, user:user3}

[wineknow, raclette_night, whisky_weekender, interlude].each do |attributes|
  event = Event.create!(attributes)
  puts "Created #{event.title}"
end

puts "creating events"
joy_riders = {title: "Women only Learn to Ride & Basic Cycle Skills", location: "Leyton Jubilee Park Seymour road London E10 7BL", category: "Sports", description: "FREE Women Learn to ride sessions starting October,FREE Bikes to borrow Gain confidence and learn to ride safely with Qualified Instructors", start_time: DateTime.new(2022,2,3,4,5,6), availability:30, user:user4}
yoga = {title: "Yoga", location: "Kingsland Locke, Dalston 130 Kingsland High Street London E8 2LQ", category: "Sports", description: "Every Tuesday - One hour of Hatha and Ashtanga Yoga. Every level welcome. Mats will be provided.", start_time: DateTime.new(2022,2,7,5,2,6), availability:2, user:user4}
rise_Run = {title: "Rise & Run with The Westin London City", location: "The Westin London City 60 High Timber Street London EC4V 3EJ", category: "Sports", description: "Rise & Run is returning to London! Join us for a 5km social run along the scenic River Thames.", start_time: DateTime.new(2022,2,7,1,2,0), availability:5, user:user4}
felt_robins = {title: "Felt Robins", location: "The Ecology Pavilion Mile End Park-Urban Makers Christmas Market 125 Grove Road London E3 5RP", category: "Hobbies", description: "Let's Make Felt Robins for Christmas Tree - Urban Makers Christmas Market", start_time: DateTime.new(2022,12,7,5,2,6), availability: 99, user:user4}

[joy_riders, yoga, rise_Run, felt_robins].each do |attributes|
  event = Event.create!(attributes)
  puts "Created #{event.title}"
end

puts "Finished!"
