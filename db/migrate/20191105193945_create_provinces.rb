class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :code
      t.decimal :tax_percentage

      t.timestamps
    end
  end
end
