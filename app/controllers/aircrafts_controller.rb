class AircraftsController < ApplicationController
  def new
  end

  def show
  # models
  @aircraft = Aircraft.find(params[:id])
  @w1s = @aircraft.w1s
  @w1c1s = @aircraft.w1c1s
  @w2s = @aircraft.w2s
  @w2c1s = @aircraft.w2c1s

  # timeline range
  @date_point = (@w1s[0].date..Date.today)

  # weight historical vectors   
  @date_array = []
  @w1_wt = []
  @w2_wt = []
  @w1w2_wt = []

  inc = 0     # w1 variable for incremental weight changes

  # calculate w1 at date_point
  @date_point.each do |date_point|

    @date_array.push(date_point)

    (0..@w1s.length-1).each do |i|
      if date_point - @w1s[i].date >= 0
        if i != @w1s.length-1
          if date_point - @w1s[i+1].date < 0

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
            @w1_wt.push(w1_wt.round)
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
          @w1_wt.push(w1_wt.round)

        end
      end 
    end
  end 

  inc = 0     # w2 variable for incremental weight changes

  # calculate w2 at date_point
  @date_point.each do |date_point|
    (0..@w2s.length-1).each do |i|
      if date_point - @w2s[i].date >= 0
        if i != @w2s.length-1
          if date_point - @w2s[i+1].date < 0

            w2 = @w2s[i].wt 
            (0..@w2c1s.length-1).each do |c2|
              if @w2c1s[c2].date == date_point
                inc = inc + @w2c1s[c2].wt
              end
            end

            if date_point == @w2s[i].date
              inc = 0
            end

            w2_wt = w2 + inc
            @w2_wt.push(w2_wt.round)
          end

        else

          w2 = @w2s[i].wt
          (0..@w2c1s.length-1).each do |c2|
            if @w2c1s[c2].date == date_point
              inc = inc + @w2c1s[c2].wt
            end
          end

          if date_point == @w2s[i].date
            inc = 0
          end

          w2_wt = w2 + inc
          @w2_wt.push(w2_wt.round)

        end
      end 
    end
  end 

  (0..@w1_wt.length-1).each do |i|
    @w1w2_wt[i] = @w1_wt[i] + @w2_wt[i]
  end

end

def index
  @aircrafts = Aircraft.all
end

end

