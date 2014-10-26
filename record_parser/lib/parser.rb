class TextParser
  def parse(input)
    file = File.readlines(input)
    file.map {|record| record.split(' ')}
  end
end
