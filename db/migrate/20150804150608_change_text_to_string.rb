class ChangeTextToString < ActiveRecord::Migration
  def change
    change_column :contracts, :contract_number, :string
    change_column :contracts, :contract_title, :string
    change_column :contracts, :contract_number, :string
    change_column :contracts, :vendor, :string
    change_column :contracts, :status, :string
    change_column :contracts, :contact, :string
    change_column :contracts, :po_number, :string
    change_column :contracts, :contract_cost, :string
    change_column :contracts, :start_date, :date
    change_column :contracts, :end_date, :date
    change_column :contracts, :purchase_date, :date
    change_column :inventories, :name, :string
    change_column :inventories, :barcode, :string
    change_column :inventories, :serial, :string
    change_column :inventories, :model, :string
    change_column :inventories, :equipment, :string
    change_column :inventories, :owner, :string
    change_column :inventories, :status, :string
    change_column :inventories, :manufacturer, :string
    change_column :inventories, :ip_address, :string
    change_column :inventories, :department, :string
    change_column :inventories, :service_tag, :string
    change_column :inventories, :operating_system, :string
  end
end
