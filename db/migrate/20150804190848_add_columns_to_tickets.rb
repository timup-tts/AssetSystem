class AddColumnsToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :contact, :string
    add_column :tickets, :severity, :string
    add_column :tickets, :assigned, :string
    add_column :tickets, :summary, :string
    add_column :tickets, :description, :text
  end
end
