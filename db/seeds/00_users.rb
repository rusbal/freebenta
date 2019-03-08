
require 'faker'

root = [ 'raymond@philippinedev.com' ]
admin = [
  'admin@gmail.com',
  'admin2@gmail.com',
  'admin3@gmail.com'
]
advertiser = [
  'ads@gmail.com',
  'ads2@gmail.com',
  'ads3@gmail.com'
]
commoner = [
  'commoner@gmail.com',
  'commoner2@gmail.com',
  'commoner3@gmail.com',
  'commoner4@gmail.com',
  'commoner5@gmail.com',
  'commoner6@gmail.com',
  'commoner7@gmail.com',
  'commoner8@gmail.com',
  'commoner9@gmail.com',
  'commoner10@gmail.com'
]

def create(email, type)
  user = User.new
  user.email = email
  user.type = type
  user.password = 'default'
  user.password_confirmation = 'default'
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.save!
end

if User.count == 0
  root.map { |email| create(email, 'Root') }
  admin.map { |email| create(email, 'Admin') }
  advertiser.map { |email| create(email, 'Advertiser') }
  commoner.map { |email| create(email, 'Commoner') }
end

