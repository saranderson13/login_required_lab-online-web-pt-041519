class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    redirect_to login_path
  end

  helpers

  def current_user
    session[:name]
  end

  def logged_in?
    !(current_user.nil? || current_user.empty?)
  end
end
