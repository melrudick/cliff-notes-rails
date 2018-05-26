class CragsController < ApplicationController

  def index
    if params[:location_id]
      @crags = Location.find(params[:location_id])
      @flag = Flag.new
    else
      @crags = Crag.all
    end
  end

  def show
    @crag = Crag.find(params[:id])
    @crag_flags = @crag.crag_flags 
  end

  def new
    @crag = Crag.new
    @location = Location.find(params[:location_id])
  end

  def create
    @location = Location.find(params[:location_id])
    @crag = @location.crags.build(crag_params)
    if @crag.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def edit
    @crag = Crag.find(params[:id])
    @location = Location.find(params[:location_id])
  end

  def update
    @location = Location.find(params[:location_id])
    @crag = Crag.find(params[:id])
    @crag.update(crag_params)
    redirect_to location_path(@location)
  end

  private

  def crag_params
    params.require(:crag).permit(:name, :region, :rock_type, :season, :location_id, flags_attributes: [:content], flag_ids: [])
  end
end
