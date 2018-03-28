#class User::RegistrationsController < Devise::RegistrationsController
#  
#  before_action :configure_permitted_parameters
#  
#  protected
#  
#  def configure_permitted_parameters
#    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
#    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
#  end
#  
#end
#

class User::RegistrationsController < Devise::RegistrationsController
  
  #prepend_before_action :configure_permitted_parameters
  prepend_before_action :check_captcha, only: [:create, :update] # Change this to be any actions you want to protect.

  private
  
    def check_captcha
      puts "Verify recaptcha: #{verify_recaptcha}"
      unless verify_recaptcha
        configure_permitted_parameters
        puts "Signup params: #{sign_up_params}"
        self.resource = resource_class.new sign_up_params
        resource.validate # Look for any other validation errors besides Recaptcha
        puts "Validation errors: #{resource.errors.full_messages}"
        respond_with_navigational(resource) { render :new }
      end 
    end
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])
  end
  
end