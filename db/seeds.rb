# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
  user = User.new
  user.email = 'raymond@philippinedev.com'
  user.password = 'default'
  user.password_confirmation = 'default'
  user.save!

  Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |filename|
    load(filename)
  end
end

