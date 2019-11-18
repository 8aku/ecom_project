class ShoppingItem < ApplicationRecord
  belongs_to :product, :class_name => "Product", :foreign_key => "products_id"
  belongs_to :shopping_bag
end
