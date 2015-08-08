class DashboardController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def index
    @inventory = Inventory.all
    @contract = Contract.all
    @ticket = Ticket.all
  end

  def total_assets
    render json: Inventory.group(:equipment).count
  end

end
