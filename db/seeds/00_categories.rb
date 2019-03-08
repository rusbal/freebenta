categories = [
  "Baby Stuff and Toys",
  "Beauty and Health",
  "Books, Education",
  "Business and Earning Opportunities",
  "Cars and Automotives",
  "Clothing and Accessories",
  "Computers",
  "Construction and Farming",
  "Consumer Electronics",
  "Food and Grocery",
  "Heavy Machinery and Trucks",
  "Home and Furniture",
  "Mobile Phones and Tablets",
  "Motorcycles and Scooters",
  "Musical Instruments",
  "Pets and Animals",
  "Real Estate",
  "Services",
  "Sports and Hobbies",
]

if Category.count == 0
  categories.each do |name|
    Category.create! name: name
  end
end

