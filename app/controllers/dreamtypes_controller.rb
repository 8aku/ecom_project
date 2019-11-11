class DreamtypesController < ApplicationController
  def index
  	@dreamtypes = Dreamtype.all.page params[:page]
  end

  def show
  	@dreamtype = Dreamtype.find(params[:id])
  end
end
