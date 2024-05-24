class DaysController < ApplicationController
  def show
    Time.zone = "Pacific Time (US & Canada)"
    @current_local_time = Time.zone.now

    @start_time = @current_local_time.change(hour: 7)
    @end_time = @current_local_time.change(hour: 23)

    render({ :template => "/days/show" })
  end
end
