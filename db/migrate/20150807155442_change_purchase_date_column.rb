class ChangePurchaseDateColumn < ActiveRecord::Migration
  def change
    change_column :inventories, :purchasedate, :date
  end
end
