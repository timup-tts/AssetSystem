class InventoriesController < ApplicationController

  def new
		@inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)

    if @inventory.save
      flash[:notice] = "Asset successfully created."
    	redirect_to @inventory
		else
			render 'new'
		end
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update
    @inventory = Inventory.find(params[:id])

    if @inventory.update(inventory_params)
      redirect_to @inventory
    else
      render 'edit'
    end
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    flash[:notice] = "Asset successfuly deleted."
    redirect_to inventories_path
  end

	def index
    @inventory = Inventory.by_equipment(params[:equipment]).by_status(params[:status]).paginate(page: params[:page], per_page: 3)
	end

  private
    def inventory_params
      params.require(:inventory).permit(
      :name,
      :serial,
      :barcode,
      :model,
      :equipment,
      :purchasedate,
      :comments,
      :owner,
      :status,
      :operating_system,
      :department,
      :ip_address,
      :service_tag
      )
    end
  end
