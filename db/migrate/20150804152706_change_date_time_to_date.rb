class ChangeDateTimeToDate < ActiveRecord::Migration
  def change
    remove_column :inventories, :purchase_date, :date
  end
end
