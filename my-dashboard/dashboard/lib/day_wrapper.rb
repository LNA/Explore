class DayWrapper
  def initialize(day_finder)
    @day_finder = day_finder
  end

  def today
    @day_finder.today
  end
end