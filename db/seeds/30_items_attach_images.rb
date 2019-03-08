# Settings
max_image_count = 5

def random_images(count)
  random_images_path = Rails.root.join('db', 'images', 'any')
  images = Dir.glob("#{random_images_path}/*.jpg")
  images.sample(count)
end

Item.all.each do |item|
  images = random_images(rand(1..max_image_count))

  primary_image = images.pop
  item.primary_image.attach io: File.open(primary_image), filename: 'item.jpg'

  images.each do |image|
    item.images.attach io: File.open(image), filename: 'item.jpg'
  end
end

