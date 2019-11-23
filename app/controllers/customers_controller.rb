class CustomersController < ApplicationController

	def register
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

			@customer.save!

			session[:customer_id] = @customer.id
			#this will be change to username
			session[:customer_name] = @customer.first_name
		end
	end 

	def login
	end
end
