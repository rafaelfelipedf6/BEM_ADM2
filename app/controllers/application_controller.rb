class ApplicationController < ActionController::Base
	
	protect_from_forgery with: :exception
	 before_action :configure_permitted_parameters, if: :devise_controller?
      protected
      def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:cpf,:telefone,:celular,:cargo,:salario,:entrada,:nome,:email,:password,:password_confirmation)}
        devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:nome, :telefone,:cargo,:salario,:celular,:email,:password,:password_confirmation,:current_password)}
      end
end
