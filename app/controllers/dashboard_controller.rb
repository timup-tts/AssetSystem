class DashboardController < ApplicationController

  def index
    @inventory = Inventory.all
  end
  
end
