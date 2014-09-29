class W1Controller < ApplicationController

	def index
		#@aircraft = Aircraft.find_by(reg:"VOU")
		@w1 = W1.all
	end

	def create
		# This needs fixing
		@aircraft = Aircraft.find_by(reg: params[:aircraft][:reg])
		w1 = W1.find_by(aircraft_id: 1)
		redirect_to w1
	end

	def show
		#Work on this next. It should be just show
	end

end
