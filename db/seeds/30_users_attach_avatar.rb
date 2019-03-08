
def faces
  faces_path = Rails.root.join('db', 'images', 'faces')
  Dir.glob("#{faces_path}/*.jpg")
end

User.all.each do |user|
  user.avatar.attach io: File.open(faces.sample), filename: 'avatar.jpg'
end

