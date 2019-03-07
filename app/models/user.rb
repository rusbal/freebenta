class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  include Contactable

  scope :root, -> { where(type: 'root') }
  scope :admin, -> { where(type: 'admin') }
  scope :advertiser, -> { where(type: 'advertiser') }
  scope :commoner, -> { where(type: 'commoner') }
end
