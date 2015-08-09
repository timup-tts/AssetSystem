class DashboardController < ApplicationController
  before_action :logged_in_user

  def index
    @inventory = Inventory.all
    @contract = Contract.all
    @ticket = Ticket.all
  end

  def total_assets
    render json: Inventory.group(:equipment).count
  end

end
