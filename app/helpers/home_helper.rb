module HomeHelper
  def category_with_count(category)
    "#{category.name} <span class='badge badge-light badge-sm'>#{category.items.count}</span>"
  end

  def format_price(item, currency_symbol = '')
    price = item.price / 100.0
    #number_to_currency price, unit: "₱"
    number_to_currency price, unit: currency_symbol
  end

  def copyright()
    'Copyright &copy; FreeBenta 2019'
  end
end
