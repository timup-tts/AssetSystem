class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :require_admin, only: [:new, :create, :index, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Account created successfully."
      redirect_to users_path
    else
      flash[:alert] = "Bad combination. Please try again."
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated."
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "User deleted."
    redirect_to users_path
  end

  def index
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(
    :first_name,
    :last_name,
    :email,
    :password,
    :password_confirmation,
    :role
    )
  end

end
