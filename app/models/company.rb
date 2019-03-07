class Company < ApplicationRecord
  before_validation :set_slug

  def to_param
    slug
  end

  def set_slug
    self.slug = self.name.parameterize unless slug
  end
end
