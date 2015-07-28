class AddColumnStatus < ActiveRecord::Migration
  def change
    add_column :inventories, :status, :text
  end
end
