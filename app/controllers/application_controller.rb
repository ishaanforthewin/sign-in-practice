class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :warning, :danger, :info
  def home
    
    @current_user ||= User.find_by(id: session[:user_id])
  
    render 'home'
  end
   def start 
   end
end
