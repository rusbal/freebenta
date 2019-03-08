class CategoriesController < ApplicationController
  before_action :set_category

  layout 'front'

  def show
    @items = @category.items
  end
  
  private

  def set_category
    @category = Category.friendly.find(params[:id])
  end
end
