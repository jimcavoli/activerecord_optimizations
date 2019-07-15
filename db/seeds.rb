# frozen_string_literal: true

require 'securerandom'

puts 'Creating demo user (user@example.com / password)...'
User.create email: 'user@example.com', password: 'password'

puts 'Creating 2000 users...'
2000.times do |index|
  User.create email: "user#{index}@example.com", password: SecureRandom.hex
end
