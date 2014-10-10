class ActypesController < ApplicationController
	def index
  		@actypes = Actype.all
	end

	def show
  		@actype = Actype.find(params[:id])
  		@aircrafts = @actype.aircrafts
  		
	end
end
