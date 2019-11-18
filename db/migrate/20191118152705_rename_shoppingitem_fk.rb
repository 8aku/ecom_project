class RenameShoppingitemFk < ActiveRecord::Migration[6.0]
   def change
      rename_column :shopping_items, :cart_id, :shopping_bag_id
   end
end


