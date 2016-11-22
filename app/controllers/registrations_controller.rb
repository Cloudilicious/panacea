class RegistrationsController < Devise::RegistrationsController
  before_action :role_params

  protected

  def role_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id])
  end
end
