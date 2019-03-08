
require 'faker'

User.all.each do |user|
  user.build_contact(
    mobile: Faker::PhoneNumber.phone_number_with_country_code,
    email: Faker::Internet.email
  )
  user.save!
end

