class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :logged_in_user
  helper_method :current_user
  helper_method :logged_in?


  def logged_in_user
      unless logged_in?
        flash[:notice] = "Please log in."
        redirect_to login_url
      end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_in(user)
    session[:user_id] = user.id
  end

end
