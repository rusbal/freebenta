class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  include Contactable
end
