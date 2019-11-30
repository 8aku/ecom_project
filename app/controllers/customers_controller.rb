class CustomersController < ApplicationController

	def register
		@codes = Province.pluck(:code)
		
		if params.include?(:first_name)
			province_id = Province.where(code: params[:province]).pluck(:id).first

			@customer = Customer.create(first_name: params[:first_name],
				last_name: params[:last_name],
				address: params[:address],
				postal_code: params[:postal_code],
				email: params[:email],
				phone: params[:phone], 
				card_number: params[:card_number],
				password: params[:password],
				Province_id: province_id)

			@customer.personal_photo.attach(params[:personal_photo])

			@customer.save
			@errors = @customer.errors.full_messages

			if @customer.valid?
				session[:customer_id] = @customer.id
			#this will be change to username
			session[:customer_name] = @customer.first_name
			redirect_to products_path
		end
	end 
end

def login
	if params.include?(:email)
		@customer = Customer.where(email: params[:email], password: params[:password]).first
		if @customer
			session[:customer_id] = @customer.id
			#this will be change to username
			session[:customer_name] = @customer.first_name
			redirect_to products_path
		end

		@error = "User not found."
	end
end

def logout
	session[:customer_id] = nil
	session[:customer_name] = nil
	redirect_to products_path
	end

def outstanding

	@customer = Customer.where(id: session[:customer_id]).first

	@orders = Order.where(customer_id: session[:customer_id], fulfilled: false)
end
end
