class AircraftsController < ApplicationController
  def new
  end

  def show
  # models
  @aircraft = Aircraft.find(params[:id])
  @w1s = @aircraft.w1s
  @w1c1s = @aircraft.w1c1s

  # timeline range
  @date_point = (@w1s[0].date..Date.today)

  # weight historical vectors
  @w1_hist = []
  @w1_date = []
  @w2_hist = []

  inc = 0     # variable for incremental weight changes

  # calculate w1 at date_point
  @date_point.each do |date_point|

    @w1_date.push(date_point)

    (0..@w1s.length-1).each do |i|
      if date_point - @w1s[i].date >= 0
        if i != @w1s.length-1
          if date_point - @w1s[i+1].date <= 0

            w1 = @w1s[i].wt 
            (0..@w1c1s.length-1).each do |c2|
              if @w1c1s[c2].date == date_point
                inc = inc + @w1c1s[c2].wt
              end
            end

            if date_point == @w1s[i].date
              inc = 0
            end

            w1_wt = w1 + inc
            @w1_hist.push(w1_wt)
          end

        else

          w1 = @w1s[i].wt
          (0..@w1c1s.length-1).each do |c2|
            if @w1c1s[c2].date == date_point
              inc = inc + @w1c1s[c2].wt
            end
          end

          if date_point == @w1s[i].date
            inc = 0
          end

          w1_wt = w1 + inc
          @w1_hist.push(w1_wt)

        end
      end 
    end
  end 

  # Calculate w2 at date_point


end

def index
  @aircrafts = Aircraft.all
end

end

