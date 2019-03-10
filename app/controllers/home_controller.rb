class HomeController < ApplicationController
  layout 'eshop'

  def index
    @category = Category.order('RANDOM()').first
  end
end
