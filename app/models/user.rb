class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  validates :type, presence: true
  validates :email, presence: true, uniqueness: true

  include Contactable

  has_one_attached :avatar
  has_many :messages

  scope :root, -> { where(type: 'root') }
  scope :admin, -> { where(type: 'admin') }
  scope :advertiser, -> { where(type: 'advertiser') }
  scope :commoner, -> { where(type: 'commoner') }

  def full_name
    "#{first_name} #{last_name}"
  end
  alias :name :full_name
end
