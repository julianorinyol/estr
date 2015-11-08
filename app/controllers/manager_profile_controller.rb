class ManagerProfileController < ApplicationController
  def create
    binding.pry
    @manager_profile = ManagerProfile.create(manager_profile_params)
  end

  def new
    @manager_profile = ManagerProfile.new
  end

  def manager_profile_params
    # params.require(:manager_profile).permit(:name, user_attributes: [ :email, :password, :password_confirmation, :address, :id ])
    params.require(:manager_profile).permit!
  end
end
