class CategoriesController < ApplicationController
  before_action :set_category, except: :index

  layout 'eshop'

  def index
  end

  def show
    @items = @category.items
  end
  
  private

  def set_category
    @category = Category.friendly.find(params[:id])
  end
end
