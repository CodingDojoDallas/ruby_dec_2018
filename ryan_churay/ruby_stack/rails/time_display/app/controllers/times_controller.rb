class TimesController < ApplicationController
  def main
    @date = Time.now
    @date = @date.strftime("%b %d, %Y %l:%M %p")
    puts @date
    render 'main'
  end
end
