class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :postal_code
      t.string :email
      t.string :phone
      t.string :card_number
      t.string :password
      t.references :Province, null: false, foreign_key: true

      t.timestamps
    end
  end
end
