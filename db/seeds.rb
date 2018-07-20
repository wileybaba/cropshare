# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "wileymckayconte@gmail.com",
                first_name: "Wiley",
                last_name: "Conte",
                username: "wileybaba",
                bio: "Farmer, coder, creator",
                role: "producer",
                password: "123456",
                password_confirmation: "123456")

99.times do |n|
  email = "example-#{n+1}@example.com"
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  username = Faker::Ancient.god
  password = "password"
  User.create!(email: email,
              first_name: first_name,
              last_name: last_name,
              password: password,
              username: username)
end




users = User.order(:created_at).take(6)
50.times do
  content = Faker::Food.description
  start_date = Faker::Date.forward(23)
  @regs = ["weekly", "biweekly", "monthly"]
  reg = @regs.sample
  users.each { |user| user.shares.create!(contains: content, start_date: start_date, regularity: reg) }
end
