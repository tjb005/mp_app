class AircraftsController < ApplicationController
  def new
  end

  def show
  	@aircraft = Aircraft.find(params[:id])
  end
end
