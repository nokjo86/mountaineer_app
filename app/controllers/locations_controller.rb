class LocationsController < ApplicationController
before_action :authenticate_user!, only: [:create, :edit, :new, :update, :destroy]
before_action :set_location, only: [:show, :edit, :update, :destroy]


  def index
    @location = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = location.new(location_params)
    @location.user = current_user
    if @location.save
      redirect_to @location
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @location.update(location_params)
      redirect_to @location
    else
      render :edit
    end   
  end
  
  def destroy
    @location.destroy
    redirect_to locations_url
  end

  private
  
  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :description)
  end

end
