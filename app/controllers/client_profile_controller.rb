class ClientProfileController < ApplicationController
  def create
    @client_profile = ClientProfile.new(client_profile_params)
  end

  def subscriber_params
    # params.require(:client_profile).permit(:first_name, :last_name, user_attributes: [ :email, :password, :password_confirmation, :address, :id ])
    params.require(:client_profile).permit!
  end
end
