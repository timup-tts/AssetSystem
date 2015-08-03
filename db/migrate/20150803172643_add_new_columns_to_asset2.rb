class AddNewColumnsToAsset2 < ActiveRecord::Migration
  def change
    add_column :inventories, :operating_system, :text
  end
end
