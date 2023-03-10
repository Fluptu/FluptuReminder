class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    add_flash_types :info, :success , :error
    around_action :switch_locale

    def switch_locale(&action)
        locale = params[:locale] || I18n.default_locale
        I18n.with_locale(locale, &action)
    end

    def default_url_options
        { locale: I18n.locale }
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: %i[ email username])
        devise_parameter_sanitizer.permit(:sign_in, keys: [ :username ])
    end
end
