class CartItem < ApplicationRecord
  belongs_to :product, :class_name => "Product", :foreign_key => "products_id"
  belongs_to :cart
end
