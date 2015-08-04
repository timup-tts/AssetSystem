class DashboardController < ApplicationController

  def index
    @inventory = Inventory.all
    @contract = Contract.all
  end

  def total_assets
    render json: Inventory.group(:equipment).count
  end

end
