# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts 'Creating 100 fake plans...'
5.times do
  plan = Plan.new(
    title:
    description:
    picture: Faker::LoremPixel.image
    location: "Shanghai"
    price:
    start_time: Faker::Time.forward(23, :morning)
    end_time: nil

  )
  plan.save!
end
puts 'Finished!'








# name:    Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     rating:  (0..5).to_a.sample
