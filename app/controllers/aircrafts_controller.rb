class AircraftsController < ApplicationController
  def new
  end

  def show
    # Models
  	@aircraft = Aircraft.find(params[:id])
  	@w1s = @aircraft.w1s
  	@w1c1s = @aircraft.w1c1s

    @w1_history =[]
    @date_point = (1.year.ago.to_date..Date.today) 

    @date_point.each do |date_point|
      
        @w1s.each do |w1|
          if w1.date == w1.date
           @test = date_point - w1.date
           @w1_history.push(@test)
          end
        end

    end

  end

  def index
  	@aircrafts = Aircraft.all
  end

end