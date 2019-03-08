class Item < ApplicationRecord
  validates :type, presence: true
  validates :name, presence: true
  validates :price, presence: true

  has_one_attached :primary_image
  has_many_attached :images

  scope :active, -> { where(type: 'ActiveItem') }
end
