class CreateDreamtypes < ActiveRecord::Migration[6.0]
  def change
    create_table :dreamtypes do |t|
      t.string :dreamtype
      t.text :description
      t.integer :horror_rating
      t.text :notes

      t.timestamps
    end
  end
end
