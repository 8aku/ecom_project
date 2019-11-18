class ChangeCartsToShoppingbags < ActiveRecord::Migration[6.0]
def change
  rename_table :carts, :shopping_bags
end
end
