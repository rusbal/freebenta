class Contact < ApplicationRecord
  validates :mobile, presence: true
end
