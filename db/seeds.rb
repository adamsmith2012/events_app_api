# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sport.create ([
		{ name: 'Basketball', img: 'https://lh3.googleusercontent.com/Eg4qDeTD4Efy07T52jJj5DUG4oRyaetRH0UGfkHoT0jBeFlCoVdAVtLNuMq2vR1XkUbv=w300'},
		{ name: 'Soccer', img: 'https://lh3.googleusercontent.com/sf4KjBUdqqivaX0sIWrgnemtENCIbsZ4s0POLeLxO4kJnmzhjlat0EIG6nXrLB8J1e8=w300'},
		{ name: 'Football', img: 'http://images.clipartpanda.com/clipart-football-1293842064_Clipart_Free.png'},
		{ name: 'Softball', img: 'https://www.staffordschools.net/cms/lib/VA01818723/Centricity/Domain/4008/softball.png'},
		{ name: 'Baseball', img: 'http://www.longmeadowbaseball.org/wp/wp-content/uploads/2016/02/lbsa-504-baseball-1-300x300.png'},
		{ name: 'Kickball', img: 'https://lh3.googleusercontent.com/enB45I9fPdhld_YutIyU84bwjuxh6yTEhEfsdMcoxFpDdxKam4rAg_NUPIVtLY4d-Xk=w300'},
])


6.times do |i|
  10.times do
    Event.create(name: Faker::Team.name, date: Faker::Date.forward(23), description: Faker::Lorem.paragraph, location: Faker::Address.street_address, cost: Faker::Number.decimal(2, 2), gender: "Coed", img: Faker::Placeholdit.image, sport_id: i+1)
  end
end
