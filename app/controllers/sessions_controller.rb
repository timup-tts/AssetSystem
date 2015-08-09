class SessionsController < ApplicationController

  layout 'login'

  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
      flash[:error] = "Bad username or password."
    end
	end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
