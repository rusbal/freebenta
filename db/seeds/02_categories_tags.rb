
tags = {
  "For All": [
    "Mobile Phones and Tablets",
    "Consumer Electronics",
    "Computers",
    "Clothing and Accessories",
    "Books, Education",
    "Beauty and Health",
  ],
  "Men": [
    "Business Opportunities",
    "Cars and Automotives",
    "Construction and Farming",
    "Heavy Machinery and Trucks",
    "Sports and Hobbies",
    "Services",
    "Pets and Animals",
    "Musical Instruments",
    "Motorcycles and Scooters",
  ],
  "Women": [
    "Business Opportunities",
    "Sports and Hobbies",
    "Pets and Animals",
    "Musical Instruments",
    "Motorcycles and Scooters",
    "Food and Grocery",
  ],
  "Kids": [
    "Sports and Hobbies",
    "Pets and Animals",
    "Musical Instruments",
    "Motorcycles and Scooters",
  ],
  "Babies": [
    "Baby Stuff and Toys",
  ],
  "Family": [
    "Real Estate",
    "Home and Furniture",
  ]
}

tags.each do |tag, categories|
  categories.each do |category|
    category = Category.where(name: category).first
    category.tags.create! name: tag
  end
end

