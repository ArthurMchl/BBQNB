class ProfilesController < ApplicationController
  def dashboard
    @barbecues = current_user.barbecues
    @rentals = current_user.rentals
  end
end


