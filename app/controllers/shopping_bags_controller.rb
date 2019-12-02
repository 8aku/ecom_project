class ShoppingBagsController < ApplicationController
	before_action :set_bag, only: [:index]

	def checkout
		@customer = Customer.where(id: session[:customer_id]).first

		@taxes = @customer.province.gst + @customer.province.pst + @customer.province.hst
		@total_cost = (current_bag.total_price * @taxes) + current_bag.total_price

		if params[:tax_total]
			@order = Order.create(order_date: Date.today, pst: @customer.province.pst,
				gst: @customer.province.gst, hst: @customer.province.hst, customers_id: @customer.id,
				total: @total_cost, 
				fulfilled: false)

			@order.save

			current_bag.shopping_items.each do |item|

				@total_cost = item.product.price_per_unit * item.quantity

				@order_detail = OrderDetail.create(
					quantity: item.quantity, discount: item.product.discount, 
					product_price: item.product.price_per_unit,
					order_id: @order.id, product_id: item.product.id,
					total: @total_cost)

				@order_detail.save
			end

			@errors = @order.errors.full_messages

			if @order.valid?
				redirect_to products_path
			end

		end

	end

end
