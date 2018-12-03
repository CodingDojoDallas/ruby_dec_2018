class TimeController < ApplicationController
  def index
    @time = Time.new
    p "time is: " + @time.inspect
    p "got here --------------------------------------------"
  end
end
