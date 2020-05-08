class UsersLocationsController < ApplicationController
before_action :authenticate_user!
def index
  @favorite = current_user.users_locations
end

def create
  p params
  relationship = UsersLocation.create(user_id: params[:user_id], location_id: params[:location_id])
  # p relationship
end

end
