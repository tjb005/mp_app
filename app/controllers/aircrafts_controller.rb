class AircraftsController < ApplicationController
  def new
  end

  def show
  	@aircraft = Aircraft.find(params[:id])
  end

  def index
  	@aircrafts = Aircraft.all
  end

end