class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  
  before_filter :deny_banned

  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout

  private

  def layout
    is_a?(Devise::SessionsController || Devise::RegistrationsController) ? "empty" : "application"
    
  end
  
  protected



def deny_banned
  if current_user.try(:banned)
    session.clear
    redirect_to unauthenticated_root_path, :notice => "You are banned from this site."
  end
end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end

end
