class DreamtypesController < ApplicationController
  def index
  	@dreamtypes = Dreamtype.all
  end

  def show
  	@dreamtype = Dreamtype.find(params[:id])
  end
end
