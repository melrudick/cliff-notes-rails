class CragsController < ApplicationController

  def index
    if params[:location_id]
      @crags = Location.find(params[:location_id])
    else
      @crags = Crag.all
    end
  end

  def new
    @crag = Crag.new
    @location = Location.find(params[:location_id])
  end

  def create
    @location = Location.find(params[:location_id])
    @crag = @location.crags.build(crags_params)
    if @crag.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  private

  def crags_params
    params.require(:crag).permit(:name, :region, :rock_type, :season, :location_id)
  end
end
