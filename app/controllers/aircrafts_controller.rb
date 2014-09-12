class AircraftsController < ApplicationController
  def new
  end

  def show
  	@aircraft = Aircraft.find(params[:id])
  	@w1s = @aircraft.w1s
  	@w1c1s = @aircraft.w1c1s
  end

  def index
  	@aircrafts = Aircraft.all
  end

end