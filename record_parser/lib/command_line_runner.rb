class CommandLineRunner
  def initialize(parser, ui)
    @parser = parser
    @ui     = ui
  end

  def start
    @ui.unsorted_records_message
    @ui.gender_message
    @ui.ascending_birthday_message
    @ui.descending_birthday_message
  end
end