class Message < ApplicationRecord
  validates :body, presence: true

  belongs_to :user
  belongs_to :sender, class_name: 'User', foreign_key: :user_id
end
