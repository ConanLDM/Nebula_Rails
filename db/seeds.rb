require 'faker'

puts 'Locations generated'
50.times do
  location = Location.new(
    location: Faker::Address.city
  )
  location.save!
end

Nebula.create(name: 'Orion Nebula', distance: 1350.0, brightness: 4)
Nebula.create(name: 'Eagle Nebula', distance: 7000.0, brightness: 3)
Nebula.create(name: 'Carina Nebula', distance: 7500.0, brightness: 5)
Nebula.create(name: 'Helix Nebula', distance: 700.0, brightness: 2)
Nebula.create(name: 'Crab Nebula', distance: 6500.0, brightness: 4)


Galaxy.create(name: 'Milky Way', size: 'Vast')
Galaxy.create(name: 'Andromeda', size: 'Enormous')

Supernova.create!(name: "Alpha")
Supernova.create!(name: "Beta")
Supernova.create!(name: "Gamma")

puts 'Seeding completed'
puts "Supernova seeds created successfully."
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
