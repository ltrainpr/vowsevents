class VendorsController < ApplicationController
	before_filter :authorize
  def index
		@vendors = Vendor.all
  end

	def new
		@events = Event.all
		@vendor = Vendor.new
	end

	def create
		@vendor = Vendor.new(vendor_params)

		if @vendor.save
			flash[:notice] = "Successfully Saved"

			redirect_to new_vendor_path
		else
			flash[:error] = "Please make sure all required fields are filled out properly"

			redirect_to new_vendor_path
		end
	end

	private

		def vendor_params
			params.require(:vendor).permit(:name, :url, :vendor_type, :email)
		end
end