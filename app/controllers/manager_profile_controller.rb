class ManagerProfileController < ApplicationController
  def create
    @manager_profile = ManagerProfile.new(manager_profile_params)
  end

  def subscriber_params
    # params.require(:manager_profile).permit(:name, user_attributes: [ :email, :password, :password_confirmation, :address, :id ])
    params.require(:manager_profile).permit!
  end

end
