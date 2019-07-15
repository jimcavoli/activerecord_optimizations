# frozen_string_literal: true

require 'securerandom'

puts 'Creating demo user (user@example.com / password) with profile...'

demo_user = User.create email: 'user@example.com', password: 'password'
UserProfile.create user: demo_user, name: 'Demo User', bio: Faker::Lorem.paragraph

puts 'Creating 2000 users with profiles...'
2000.times do
  user = User.create email: Faker::Internet.unique.email, password: SecureRandom.hex
  UserProfile.create user: user, name: Faker::Name.name, bio: Faker::Lorem.paragraph
end
