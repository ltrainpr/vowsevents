class ContactController < ApplicationController
	def index
		
	end

	def create
		ContactFormMailer.contact_form(params).deliver
		redirect_to contact_index_path
	end
end
