class Parser
  def parse_text(file)
    file = file_to_array(file)
    file.map {|record| record.split(' ')}
  end

  def parse_xml(file)
    file = file_to_string(file)
    records = []

    parse_records(file).each do |record|
      records << get_record(record)
    end
    records
  end

private
  def file_to_array(file)
    File.readlines(file)
  end

  def file_to_string(file)
    File.read(file)
  end

  def get_record(record)
    record[0].scan(/<\w+>(\w+\.?\d*)/).flatten
  end

  def parse_records(file_to_s)
    file_to_s.scan(/<record>(.*?)<\/record>/m)
  end
end