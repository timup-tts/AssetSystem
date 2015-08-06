class TicketsController < ApplicationController

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
    @tickets = Ticket.all
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
