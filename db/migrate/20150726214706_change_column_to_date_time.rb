class ChangeColumnToDateTime < ActiveRecord::Migration
  def change
    change_column :inventories, :purchasedate, :datetime
  end
end
