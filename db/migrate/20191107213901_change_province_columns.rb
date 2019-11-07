class ChangeProvinceColumns < ActiveRecord::Migration[6.0]
def change
  rename_column :provinces, :tax_percentage, :pst
  add_column :provinces, :hst, :decimal

  add_column :orders, :gst, :decimal
  add_column :orders, :hst, :decimal
  rename_column :orders, :sales_tax, :pst
end
end