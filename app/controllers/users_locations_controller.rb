class UsersLocationsController < ApplicationController
before_action :authenticate_user!

def index
  @favorite = current_user.users_locations
end

def create
  relationship = UsersLocation.create(user_id: current_user.id, location_id: params[:location_id])
  redirect_to new_users_location_list_path(users_location_id: relationship.id)
end

def destroy
  UsersLocation.destroy(params[:users_location_id])
  redirect_to users_location_lists_path
end

end
