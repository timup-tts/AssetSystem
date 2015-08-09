class SearchController < ApplicationController
  before_action :logged_in_user

  def index
    if jump = jump_target
      redirect_to jump
    else
      @results = Search.for(params[:keyword])
    end
  end

  private
    def jump_target
      Inventory.find_by(name: params[:keyword]) ||
      Contract.find_by(contract_number: params[:keyword])
    end
end
