class ListsController < ApplicationController
before_action :authenticate_user!
before_action :get_userslocation, except: [:destroy]
before_action :set_list, only: [:show, :edit, :update]

  def index
    @list = @userslocation.lists
  end


  def new
      @list = @userslocation.lists.new
  end

  def create
    @list = @userslocation.lists.new(list_params)
      if @list.save
        redirect_to users_location_lists_path
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      if @list.save
        redirect_to users_location_lists_url
      else
        render :edit
      end
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to "http://www.rubyonrails.org"
  end

  private

  def get_userslocation
    @userslocation = UsersLocation.find(params[:users_location_id])
  end

  def set_list
    @list = @userslocation.lists.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:gear_id, :quantity)
  end
end
