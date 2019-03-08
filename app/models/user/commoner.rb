class User::Commoner < User
  has_many :items, foreign_key: :user_id
end
