class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :username, :bio, :birthdate, :twitch_username, :mixer_username, :instagram_username, :youtube_username)}

    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me)}
    
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :username, :bio, :birthdate, :twitch_username, :mixer_username, :instagram_username, :youtube_username, :email, :current_password, :password_confirmation, :remember_me)}

  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || user_path(current_user)
  end

end
