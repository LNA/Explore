class CommandLineRunner
  def initialize(parser, ui)
    @parser = parser
    @ui     = ui
  end

  def start
    @ui.unsorted_records_message
    parsed_file = @parser.parse('data/input.xml')
    parsed_file.each do |line|
      @ui.display_records(line)
    end
    @ui.gender_message
    @ui.ascending_birthday_message
    @ui.descending_birthday_message
  end
end