class AddNewColumns < ActiveRecord::Migration
  def change
    add_column :inventories, :purchasedate, :text
    add_column :inventories, :comments, :text
  end
end
