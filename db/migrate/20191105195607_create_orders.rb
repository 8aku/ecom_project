class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.date :order_date
      t.decimal :sales_tax
      t.decimal :total
      t.date :paid_date
      t.boolean :fulfilled
      t.text :comments
      t.references :customers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
