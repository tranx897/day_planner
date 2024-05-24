class DaysController < ApplicationController
  def show
    @start_time = Time.zone.now

    @start_date = @start_time.to_date
    @end_date = @start_date

    @day_start_time = @start_time.change(hour: 7)
    @day_end_time = @start_time.change(hour: 23)

    @tasks = Task.where(start_time: @day_start_time..@day_end_time)

    render({ :template => "/days/show" })
  end
end
