class DashboardController < ApplicationController

  def index
    @inventory = Inventory.all
  end

  def total_assets
    render json: Inventory.group(:equipment).count
  end

end
