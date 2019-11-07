class PagesColumnChange < ActiveRecord::Migration[6.0]
def change
  rename_column :pages, :content, :about
  rename_column :pages, :heading, :contact
  change_column :pages, :contact, :text
end
end
