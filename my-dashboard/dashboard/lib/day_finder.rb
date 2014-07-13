require 'date'
require 'active_support' 

class DayFinder
  def today
    Date.today.strftime("%A")
  end

  def tomorrow
    (Date.today + 1).strftime("%A")
  end
end