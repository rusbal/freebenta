
require 'faker'

def phrase
  source = [0, 1, 2, 3].sample
  if source == 0
    Faker::GreekPhilosophers.quote
  elsif source == 1
    Faker::DcComics.title
  elsif source == 2
    Faker::ChuckNorris.fact
  elsif source == 3
    Faker::Commerce.product_name
  end
end

def build_messages(item)
  inquirers(rand(1..3)).each do |inquirer|
    exchanges = rand(1..5)
    exchanges.times do
      item.messages.build(sender: inquirer, body: phrase)
      item.messages.build(sender: item.owner, body: phrase)
    end
  end
end

def inquirers(count)
  User::Commoner.order('RANDOM()').limit(count)
end

Item.all.each do |item|
  next if [true, false].sample
  build_messages(item)
  item.save!
end

