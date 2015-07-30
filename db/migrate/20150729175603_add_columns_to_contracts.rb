class AddColumnsToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :contract_number, :text
    add_column :contracts, :contract_title, :text
    add_column :contracts, :start_date, :datetime
    add_column :contracts, :end_date, :datetime
    add_column :contracts, :vendor, :text
    add_column :contracts, :status, :text
    add_column :contracts, :contact, :text
    add_column :contracts, :description, :text
    add_column :contracts, :po_number, :text
    add_column :contracts, :purchase_date, :datetime
    add_column :contracts, :contract_cost, :text
  end
end
