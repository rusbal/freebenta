
Item.all.each do |item|
  assoc_category_count = [1, 1, 1, 1, 1, 1, 1, 2, 2, 3].sample
  assoc_category_count.times do
    item.categories << Category.order('RANDOM()').first
  end
end

