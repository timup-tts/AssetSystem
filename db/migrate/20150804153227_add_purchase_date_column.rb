class AddPurchaseDateColumn < ActiveRecord::Migration
  def change
    add_column :inventories, :purchase_date, :date
  end
end
