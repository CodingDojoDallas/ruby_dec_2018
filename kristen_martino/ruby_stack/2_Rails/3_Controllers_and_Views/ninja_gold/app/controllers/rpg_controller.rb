require 'date'
class RpgController < ApplicationController
  def index
    session['gold']     = 0 unless session['gold']
    session['activity'] = [] unless session['activity']
  end

  def farm
    gold            = rand(10..20)
    datetime        = Time.now.in_time_zone("America/Chicago")
    session['gold'] += gold
    session['activity'].push({
                                 location:  "farm",
                                 money:     gold,
                                 color:     "text-success",
                                 outcome:   "won",
                                 date_time: datetime
                             })
    redirect_to :action => "index"
  end

  def cave
    gold            = rand(5..10)
    datetime        = Time.now.in_time_zone("America/Chicago")
    session['gold'] += gold
    session['activity'].push({
                                 location:  "cave",
                                 money:     gold,
                                 color:     "text-success",
                                 outcome:   "won",
                                 date_time: datetime
                             })
    redirect_to :action => "index"
  end

  def casino
    gold            = rand(-50..50)
    datetime        = Time.now.in_time_zone("America/Chicago")
    session['gold'] += gold
    (gold < 0) ? outcome = "lost" : outcome = "won"
    (gold < 0) ? color = "text-danger" : color = "text-success"
    session['activity'].push({
                                 location:  "casino",
                                 money:     gold,
                                 color:     color,
                                 outcome:   outcome,
                                 date_time: datetime
                             })
    redirect_to :action => "index"
  end

  def house
    gold            = rand(2..5)
    datetime        = Time.now.in_time_zone("America/Chicago")
    session['gold'] += gold
    session['activity'].push({
                                 location:  "house",
                                 money:     gold,
                                 color:     "text-success",
                                 outcome:   "won",
                                 date_time: datetime
                             })
    redirect_to :action => "index"
  end
end
