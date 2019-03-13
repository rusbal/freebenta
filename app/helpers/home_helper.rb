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

  def nav_gradient()
    return Rails.configuration.gradient_css[:amazon] if controller_name == 'home'
    return Rails.configuration.gradient_css[:black] if controller_name == 'items'
    Rails.configuration.gradient_css[:red]
  end

  def image_public_url(image, resize)
    image = image.variant(resize: resize) if resize
    resolve_image_source(image, nil)
  end
end
