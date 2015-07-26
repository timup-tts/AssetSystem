class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :inventories, :type, :equipment
  end
end
