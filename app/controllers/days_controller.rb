class DaysController < ApplicationController
  def show
    
    render({ :template => "/days/show"})
  end
end
