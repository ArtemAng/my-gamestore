class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters

  include DeviseTokenAuth::Concerns::SetUserByToken

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :nickname]) #error with resource_name
  end
end
