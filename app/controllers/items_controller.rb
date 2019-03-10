class ItemsController < ApplicationController
  before_action :set_item

  layout 'eshop'

  def show
  end

  private

  def set_item
    @item = Item.friendly.find params[:id]
  end
end
