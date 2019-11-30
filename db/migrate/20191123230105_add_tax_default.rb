class AddTaxDefault < ActiveRecord::Migration[6.0]
def up
	change_column :provinces, :pst, :decimal, default: 0
	change_column :provinces, :gst, :decimal, default: 0
	change_column :provinces, :hst, :decimal, default: 0
end

def down
	change_column :provinces, :pst, :decimal, default: 0
	change_column :provinces, :gst, :decimal, default: 0
	change_column :provinces, :hst, :decimal, default: 0
end
end