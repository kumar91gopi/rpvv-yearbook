class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :update_sanitized_params, if: :devise_controller?
  
  
  def after_sign_in_path_for(resource)
    users_path
  end

  
  
  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :user_type, :school_id,:date_of_birth, :password, :password_confirmation,:gender)}
     devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email,:school_id, :password, :password_confirmation,  :current_password)}
  end
end
