class ChangeCartitemsToShoppingitems < ActiveRecord::Migration[6.0]
def change
  rename_table :cart_items, :shopping_items
end
end
