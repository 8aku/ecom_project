class ProductsController < ApplicationController
	def index
		if params[:search]
			if (params[:category] == "")
				@products = Product.where("name LIKE ? OR Products.description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
			end
			if (params[:category] == "AbsurdDream")
				@products = Product.joins(:dreamtype).where("dreamtype = 'AbsurdDream' AND name LIKE ? OR products.description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
			end
			if (params[:category] == "ComfortingDream")
				@products = Product.joins(:dreamtype).where("dreamtype = 'ComfortingDream' AND name LIKE ? OR products.description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
			end
	else
		@products = Product.order(:name).page params[:page]
	end

	@dreamtypes = Dreamtype.pluck(:dreamtype)
	
end

	def show
		@product = Product.find(params[:id])
	end
end
