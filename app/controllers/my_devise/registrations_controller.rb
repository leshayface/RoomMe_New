class MyDevise::RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(resource_name).permit(:name, :phone, :email, :password, :password_confirmation, :poster_type)
    end

    

end