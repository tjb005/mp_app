class W1Controller < ApplicationController

	def index
		@aircraft = Aircraft.find_by(reg:"VOM")
	end

end
