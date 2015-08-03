class AddNewColumnsToAsset < ActiveRecord::Migration
  def change
    add_column :inventories, :manufacturer, :text
    add_column :inventories, :ip_address, :text
    add_column :inventories, :department, :text
    add_column :inventories, :service_tag, :text
  end
end
