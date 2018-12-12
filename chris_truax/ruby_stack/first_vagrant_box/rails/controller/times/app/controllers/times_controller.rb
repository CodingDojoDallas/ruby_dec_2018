class TimesController < ApplicationController
  def main
    @time = Time.now.strftime("%b %d, %Y\n%X %p")
    puts @time
  end
end
