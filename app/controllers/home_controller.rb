class HomeController < ApplicationController
  layout 'eshop'

  def index
    @category = Category.order('RANDOM()').first
    @items = Item.order('RANDOM()').limit(12)
  end
end
