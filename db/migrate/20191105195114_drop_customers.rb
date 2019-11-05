class DropCustomers < ActiveRecord::Migration[6.0]
  def change
  	drop_table :customers
  end
end
