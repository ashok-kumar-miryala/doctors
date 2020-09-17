class ApplicationController < ActionController::Base

 before_action :configure_permitted_paramters, if: :devise_controller?
 before_action :authenticate_user!

  protected
    def configure_permitted_paramters

        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])

        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, 
        :email, :password])

    end

end
