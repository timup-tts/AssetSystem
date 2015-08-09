class ContractsController < ApplicationController
  before_action :logged_in_user

  def new
		@contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)

    if @contract.save
      flash[:success] = "Contract successfully created."
    	redirect_to @contract
		else
			render 'new'
		end
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])

    if @contract.update(contract_params)
      redirect_to @contract
    else
      render 'edit'
    end
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    flash[:success] = "Contract successfully deleted."
    redirect_to contracts_path
  end

  def destroy_attachment
    @contract.contract_attach = nil
    @contract.save
  end

  def index
    @contracts = Contract.by_type(params[:contract_type]).by_status(params[:status]).paginate(page: params[:page], per_page: 15)
  end

private
  def contract_params
    params.require(:contract).permit(
    :contract_title,
    :contract_number,
    :start_date,
    :end_date,
    :vendor,
    :status,
    :contact,
    :description,
    :po_number,
    :purchase_date,
    :contract_cost,
    :contract_attach,
    :contract_type
    )
  end

end
