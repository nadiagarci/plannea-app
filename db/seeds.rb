# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
User.where(email: "test-test@test.com").destroy_all

user = User.create!(email: "test-test@test.com", password: "password")

puts 'Creating 5 fake plans...'
5.times do
  plan = Plan.new(
    title: Faker::Movie.quote,
    description: Faker::Lorem.paragraphs,
    location: ["Shanghai", "Amsterdam", "London", "Santo Domingo", "Tokyo", "Berlin"].sample,
    price: "15",
    user_id: user.id,
    start_time: Faker::Time.forward(23, :morning),
    end_time: nil
  )
  plan.remote_picture_url = "https://source.unsplash.com/1600x900/?experience"

  plan.save!
end
puts 'Finished!'








# name:    Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     rating:  (0..5).to_a.sample
