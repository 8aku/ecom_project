class ShoppingItemsController < ApplicationController
  before_action :set_bag, only: [:create, :update, :destroy]
  before_action :set_shopping_item, only: [:update, :destroy]
  
  def create
    @bag.add_product(params)
    flash[:notice] = params[:product][:quantity] + " item(s) added to shopping cart."
    redirect_to products_path

  end

  def update
    if @shopping_item.update(shopping_item_params)
        redirect_to shopping_bags_path
    else
        redirect_to shopping_bags_path
    end
  end

  def destroy
    @shopping_item.destroy
    redirect_to shopping_bags_path
  end

  private
    def current_bag
      @current_bag = ShoppingBag.find(session[:shopping_bag_id])
    end
    
    def set_shopping_item
      @shopping_item = ShoppingItem.find(params[:id])
    end

    def shopping_item_params
      params.require(:shopping_item).permit(:products_id, :shopping_bag_id, :quantity)
    end
end