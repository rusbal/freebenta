
require 'faker'

root       = [ 'raymond@philippinedev.com' ]
admin      =  3.times.map { |n| "admin#{n + 1}@gmail.com" }
advertiser =  3.times.map { |n| "ads#{n + 1}@gmail.com" }
commoner   = 50.times.map { |n| "commoner#{n + 1}@gmail.com" }

def create(email, type)
  user = User.new
  user.email = email
  user.type = type
  user.password = 'default'
  user.password_confirmation = 'default'
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.save!
  user.confirm
end

if User.count == 0
  root.map { |email| create(email, 'User::Root') }
  admin.map { |email| create(email, 'User::Admin') }
  advertiser.map { |email| create(email, 'User::Advertiser') }
  commoner.map { |email| create(email, 'User::Commoner') }
end

