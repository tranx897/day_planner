class DaysController < ApplicationController
  def show
    time_zone = current_user.time_zone
    @start_time = Time.zone.now.in_time_zone(time_zone)

    @start_date = @start_time.to_date
    @end_date = @start_date

    @day_start_time = @start_time.change(hour: 7)
    @day_end_time = @start_time.change(hour: 23)

    @tasks = Task.where(start_time: @day_start_time..@day_end_time)

    render({ :template => "/days/show" })
  end
end
