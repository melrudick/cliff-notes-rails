class CragsController < ApplicationController

  def index
    if params[:location_id]
      @crags = Location.find(params[:location_id])
    else
      @crags = Crag.all
    end
  end

  def new
  end
end
