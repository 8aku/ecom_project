class Cart < ApplicationRecord
  has_many :cart_items
  
  def add_product(product_params)
      new_item = cart_items.create(products_id: product_params[:product][:products_id], 
                                  quantity: product_params[:product][:quantity],
                                  cart_id: self.id)
  end

  def cart_size
    size = 0
    self.cart_items.each do |cart_item|
      size += cart_item.quantity
    end
    size
  end

  def total_price
    cart_items.to_a.sum { |item| item.total_price }
  end
end