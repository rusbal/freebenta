class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true

  include Taggable

  has_and_belongs_to_many :items
end
