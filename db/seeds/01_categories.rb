root = [
  "Baby Stuff and Toys",
  "Beauty and Health",
  "Cars and Automotives",
  "Clothing and Accessories",
  "Motorcycles and Scooters",
  "Food and Grocery",
  "Services",
  "Entertainment",
  "Tech and Gadgets",
  "Home and Business",
]

categories = {
  "Entertainment": [
    "Books, Education",
    "Musical Instruments",
    "Pets and Animals",
    "Sports and Hobbies",
  ],
  "Tech and Gadgets": [
    "Computers",
    "Consumer Electronics",
    "Mobile Phones and Tablets",
  ],
  "Home and Business": [
    "Real Estate",
    "Construction and Farming",
    "Business Opportunities",
    "Heavy Machinery and Trucks",
    "Home and Furniture",
  ]
}

if Category.count == 0
  root.each do |name|
    Category.create! name: name
  end

  categories.each do |category, subcats|
    category = Category.where(name: category).first
    subcats.each do |subcat|
      category.children.create! name: subcat
    end
  end
end
