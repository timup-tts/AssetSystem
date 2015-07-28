class SearchController < ApplicationController
  def index
    if jump = Inventory.find_by(name: params[:keyword])
      redirect_to jump
    else
      @results = Search.for(params[:keyword])
    end
  end
end
