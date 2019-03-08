class Item < ApplicationRecord
  validates :type, presence: true
  validates :name, presence: true
  validates :price, presence: true

  has_one_attached :primary_image
  has_many_attached :images

  belongs_to :commoner, class_name: 'User::Commoner', foreign_key: :user_id
  alias :owner :commoner
  alias :user  :commoner

  include Messageable

  scope :active,     -> { where(type: 'Item::Active') }
  scope :inactive,   -> { where(type: 'Item::Inactive') }
  scope :sold,       -> { where(type: 'Item::Sold') }
  scope :reserved,   -> { where(type: 'Item::Reserved') }
  scope :understock, -> { where(type: 'Item::Understock') }
end
