class InventoriesController < ApplicationController
  def new
		@inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)

    if @inventory.save
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

    redirect_to inventories_path
  end

	def index
		@inventory = Inventory.all.order("created_at DESC")
    @total_assets = Inventory.all.count
    @laptops = Inventory.where(equipment: "Laptop").count
    @desktops = Inventory.where(equipment: "Desktop").count
    @servers = Inventory.where(equipment: "Server").count
    @storage = Inventory.where(equipment: "Storage").count
    @printers = Inventory.where(equipment: "Printer").count
    @phones = Inventory.where(equipment: "Phone").count
    @tablets = Inventory.where(equipment: "Tablet").count
	end

  def search
    @results = Inventory.search(params[:search])
  end

  def allassets
    @inventory = Inventory.all
  end

  private
    def inventory_params
      params.require(:inventory).permit(:name, :serial, :barcode, :model, :equipment, :purchasedate, :comments, :owner, :status)
    end
  end
