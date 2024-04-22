require 'faker'

puts 'Locations generated'
50.times do
  location = Location.new(
    location: Faker::Address.city
  )
  location.save!
end

Galaxy.create(name: 'Milky Way', size: 'Vast')
Galaxy.create(name: 'Andromeda', size: 'Enormous')

puts 'Seeding completed'
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?