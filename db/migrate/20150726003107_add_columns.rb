class AddColumns < ActiveRecord::Migration
  def change
    add_column :inventories, :name, :text
    add_column :inventories, :barcode, :text
    add_column :inventories, :serial, :text
    add_column :inventories, :model, :text
    add_column :inventories, :type, :text
    add_column :inventories, :owner, :text
    add_reference :inventories, :user, index: true
  end
end
