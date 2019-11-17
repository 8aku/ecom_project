class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create, :update, :destroy]
  before_action :set_cart_item, only: [:update, :destroy]
  
  def create
    @cart.add_product(params)
    flash[:notice] = params[:product][:quantity] + " item added to shopping cart."
    redirect_to products_path

  end

  def update
    if @cart_item.update(cart_item_params)
        redirect_to carts_path
    else
        redirect_to carts_path
    end
  end

  def destroy
    @cart_item.destroy
    redirect_to carts_path
  end

  private
    def current_cart 
      @current_cart = Cart.find(session[:cart_id])
    end
    
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    def cart_item_params
      params.require(:cart_item).permit(:products_id, :cart_id, :quantity)
    end
end