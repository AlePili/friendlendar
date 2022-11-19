# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Event.destroy_all
User.destroy_all

user = User.create!(email: "admin@admin.com", password: "123456")

puts "creating events"
brunch = {title: "Botomless Brunch", location: "7 Boundary St, London E2 7JE", category: "Sunday Funday", description: "Come join me for botomless brunch and Hoxton Shoreditch ;)", start_time: DateTime.new(2022,2,3,4,5,6), availability:2, user:user}
candlelit_concert = {title: "Hans Zimmer Candlelit Concert", location: "10 Godliman St, London EC4V 5AJ", category: "Music", description: "I have two tickets for the Hans Zimmer tribute in St. Pauls. Supposed to be lit (no pun intended)", start_time: DateTime.new(2022,2,7,5,2,6), availability:2, user:user}
walking_dog = {title: "Dog walkies", location: "5 Coal Lane, London SW9 8GG", category: "Sunday Funday", description: "Who wants to join me on a hot girl walk with Ruby", start_time: DateTime.new(2022,2,7,1,2,0), availability:5, user:user}
christmas_fundraiser = {title: "Christmas Fundraiser", location: "5 Coal Lane, London SW9 8GG", category: "Charity", description: "I am doing a charity fundraiser to help the homeless people this winter. I'll be holding a second hand market in my place, please bring anything you wish to donate. All the proceeds would go towards booking hotels for the homeless on Christmas day", start_time: DateTime.new(2022,12,7,5,2,6), availability: 99, user:user}

[brunch, candlelit_concert, walking_dog, christmas_fundraiser].each do |attributes|
  event = Event.create!(attributes)
  puts "Created #{event.title}"
end

puts "Finished!"
