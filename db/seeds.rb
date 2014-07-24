require 'ffaker'

#send your databse to 100 random users
100.times do |i|
  User.create ({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.phone_number
  })
end
