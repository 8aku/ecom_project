class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :image
      t.text :description
      t.integer :stock
      t.decimal :discount
      t.decimal :price_per_unit
      t.references :dreamtype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
