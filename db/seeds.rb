# frozen_string_literal: true

require 'securerandom'

def create_complete_user!(**opts)
  user = User.create(
    email: opts[:email] || Faker::Internet.unique.email,
    password: opts[:password] || SecureRandom.hex
  )

  address = Address.create(
    address1: Faker::Address.street_address,
    address2: rand(1..3).even? ? Faker::Address.secondary_address : nil,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip
  )
  address.tag_list = Faker::Lorem.words(opts[:tag_count] || rand(0..3), true).join(',')
  address.save

  user.user_profile = UserProfile.create(
    name: opts[:name] || Faker::Name.name,
    bio: Faker::Lorem.paragraph,
    address: address
  )

  user.tag_list = Faker::Lorem.words(opts[:tag_count] || rand(0..10), true).join(',')
  user.save!

  nil
end

puts 'Creating demo user (user@example.com / password) with profile and tags...'

create_complete_user! email: 'user@example.com', password: 'password'

puts 'Creating 2000 users with profiles and tags...'
2000.times do
  create_complete_user!
end
