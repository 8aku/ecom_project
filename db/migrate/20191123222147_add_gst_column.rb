class AddGstColumn < ActiveRecord::Migration[6.0]
  def change
  	add_column :provinces, :gst, :decimal
  end
end