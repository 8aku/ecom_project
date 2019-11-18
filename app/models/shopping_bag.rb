class ShoppingBag < ApplicationRecord
  has_many :shopping_items
  
  def add_product(product_params)
    current_item = shopping_items.find_by(products_id: product_params[:product][:products_id])

    if current_item
      current_item.quantity += product_params[:product][:quantity].to_i
      current_item.save
    else
      new_item = shopping_items.create(products_id: product_params[:product][:products_id], 
                                  quantity: product_params[:product][:quantity],
                                  shopping_bag_id: self.id)
    end
      new_item
  end

  def bag_size
    size = 0
    self.shopping_items.each do |item|
      size += item.quantity
    end
    size
  end

  def total_price
    shopping_items.to_a.sum { |item| item.product.price_per_unit * item.quantity }
  end
end