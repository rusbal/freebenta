require 'faker'

create_count = 1000

def type
  if rand(0..7) == 0
    return [
      'Item::Inactive',
      'Item::Reserved',
      'Item::Sold',
      'Item::Understock',
    ].sample
  end
  'Item::Active'
end

def create_item(commoner)
  name = Faker::Commerce.product_name
  price = Faker::Commerce.price * 10000

  commoner.items.create! type: type, name: name, description: "Desc: #{name}...", price: price
end

if Item.count == 0
  create_count.times do
  end

  target = 1000
  created = 0

  while created < target
    User::Commoner.all.each do |commoner|
      item_count_for_user = rand(0..10)
      item_count_for_user.times do
        create_item(commoner)
        created += 1
        break if created == target
      end
      break if created == target
    end
  end
end

