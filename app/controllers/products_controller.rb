class ProductsController < ApplicationController
  def index
  	@products = Product.order(:name).page params[:page]

  	@dreamtypes = Dreamtype.pluck(:dreamtype)
  end

  def show
  	@product = Product.find(params[:id])
  end
end
