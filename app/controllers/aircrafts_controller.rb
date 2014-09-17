class AircraftsController < ApplicationController
  def new
  end

  def show
    # Models
  	@aircraft = Aircraft.find(params[:id])
  	@w1s = @aircraft.w1s
  	@w1c1s = @aircraft.w1c1s

    @w1_history =[]
    @date_point = (5.year.ago.to_date..Date.today) 

    # Counters
    x = 0
    @w1s.each do |w1|
        x=x+1
    end
    x=x-1

    y = 0
    @w1c1s.each do |w1c1|
        y=y+1
    end
    y=y-1

    j=0
    inc = 0

    @date_point.each do |date_point|
      # Get w1


      (0..x).each do |i|
        if date_point - @w1s[i].date >= 0
          if i != x
            if date_point - @w1s[i+1].date <= 0
              
               w1 = @w1s[i].wt 
              (0..y).each do |c2|
                if @w1c1s[c2].date == date_point
                  inc = inc + @w1c1s[c2].wt
                end
              end
              w1_date = w1 + inc
              @w1_history.push(w1_date)
            end

            else
              @w1_history.push(@w1s[i].wt)
          end
        end 
      end
      
      @lengther = @w1_history.length

    end 

    

  end

  def index
  	@aircrafts = Aircraft.all
  end

end

      # @w1s.each do |w1|
        #  if w1.date == w1.date
         #  @test = date_point - w1.date
          # @w1_history.push(@test)
         # end
        #end
