require 'faker'

puts 'Locations generated'
50.times do
  location = Location.new(
    location: Faker::Address.city
  )
  location.save!
end

puts 'Seeding completed'
