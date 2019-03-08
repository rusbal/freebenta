require 'faker'

create_count = 1000

if Item.count == 0
  create_count.times do
    name = Faker::Commerce.product_name
    price = Faker::Commerce.price * 10000

    Item.create! name: name, description: "Desc: #{name}...", price: price
  end
end

