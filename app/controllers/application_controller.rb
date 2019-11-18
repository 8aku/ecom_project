class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_bag
  helper_method :current_bag
 
 private
  def set_bag
    @bag =  ShoppingBag.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
    @bag = ShoppingBag.create
    session[:cart_id] = @cart.id
  end

   def current_bag
      if !session[:cart_id].nil?
        ShoppingBag.find(session[:cart_id])
      end
    end
end