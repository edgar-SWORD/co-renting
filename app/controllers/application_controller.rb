class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :home

  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :job_title, :avatar_url, :address, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :job_title, :avatar_url, :address, :photo])
  end

  def after_sign_in_path_for(resource)
    new_child_path
  end

  def after_update_path_for(resource)
    new_child_path
  end

  def user_root_path
    new_child_path

  end
end
