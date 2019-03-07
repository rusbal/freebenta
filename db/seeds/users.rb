# root
# admin
# advertiser
# user

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
user = [
  'user@gmail.com',
  'user2@gmail.com',
  'user3@gmail.com',
  'user4@gmail.com',
  'user5@gmail.com',
  'user6@gmail.com',
  'user7@gmail.com',
  'user8@gmail.com',
  'user9@gmail.com',
  'user10@gmail.com'
]

def create(email, type)
  user = User.new
  user.email = email
  user.type = type
  user.password = 'default'
  user.password_confirmation = 'default'
  user.save!
end

if User.count == 0
  root.map { |email| create(email, 'root') }
  admin.map { |email| create(email, 'admin') }
  advertiser.map { |email| create(email, 'advertiser') }
  user.map { |email| create(email, 'user') }
end

