class TicketsController < ApplicationController
  before_action :logged_in_user

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      flash[:notice] = "Ticket successfully created."
      redirect_to @ticket
    else
      render 'new'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render 'edit'
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    flash[:notice] = "Ticket successfully deleted."
    redirect_to tickets_path
  end

  def index
    @tickets = Ticket.by_severity(params[:severity]).by_status(params[:status]).paginate(page: params[:page], per_page: 15)
  end

  private
    def ticket_params
      params.require(:ticket).permit(
      :contact,
      :severity,
      :assigned,
      :summary,
      :description,
      :status,
      :attachment
      )
    end

  end
