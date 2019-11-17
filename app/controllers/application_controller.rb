class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cart
  helper_method :current_cart
 
 private
  def set_cart
    @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

   def current_cart
      if !session[:cart_id].nil?
        Cart.find(session[:cart_id])
      end
    end
end
