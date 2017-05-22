# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sport.create ([
		{ name: 'Basketball', img: 'https://image.flaticon.com/icons/svg/164/164992.svg'},
		{ name: 'Soccer', img: 'https://image.flaticon.com/icons/svg/140/140389.svg'},
		{ name: 'Football', img: 'https://image.flaticon.com/icons/svg/164/164993.svg'},
		{ name: 'Softball', img: 'https://image.flaticon.com/icons/svg/140/140411.svg'},
		{ name: 'Baseball', img: 'https://image.flaticon.com/icons/svg/164/164991.svg'},
		{ name: 'Kickball', img: 'https://image.flaticon.com/icons/svg/421/421170.svg'},
])


6.times do |i|
  10.times do
		gender = ['male', 'female', 'coed'].sample
    Event.create(name: Faker::Team.name, date: Faker::Date.forward(23), description: Faker::Lorem.paragraph, location: Faker::Address.street_address, cost: Faker::Number.decimal(2, 2), gender: gender, img: Faker::Placeholdit.image, sport_id: i+1)
  end
end
