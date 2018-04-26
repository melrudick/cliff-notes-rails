class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
    @location.crags.build
    if @save
      redirect_to locations_path
    else
      render :new
    end
  end

  def create
    @location = Location.new(location_params)
    @location.save
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:name, crags_attributes: [:name, :region, :rock_type, :season])
  end
end
