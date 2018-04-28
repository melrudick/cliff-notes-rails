class FlagsController < ApplicationController

  def index
    if params[:crag_id]
      @flags = Crag.find(params[:crag_id])
    else
      @flags = Flag.all
    end
  end

  def new
    @flag = Flag.new
    @crag = Crag.find(params[:crag_id])
  end

  def create
    @crag = Crag.find(params[:crag_id])
    @flag = @crag.flags.build(flag_params)
    if @flag.save
      redirect_to crag_path(@crag)
    else
      render :new
    end
  end

  private

  def flag_params
    params.require(:flag).permit(:content, :crag_id)
  end
end
