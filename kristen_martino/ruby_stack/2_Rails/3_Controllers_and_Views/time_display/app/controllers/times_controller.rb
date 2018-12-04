require 'date'
class TimesController < ApplicationController
  def main
    datetime = Time.now.in_time_zone("America/Chicago")
    @date = datetime.strftime("%b %-d, %Y")
    @time = datetime.strftime("%l:%M %p %Z")
  end
end
