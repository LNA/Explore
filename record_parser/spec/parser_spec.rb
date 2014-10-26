require 'spec_helper'
 
describe TextParser do
  it "parses data" do
    test_parser = Parser.new
    parsed_records = test_parser.parse('data/input.txt')

    expect(parsed_records.first).to eq ["Adams", "Wednesday", "F", "Black", "06/04/1989"]
  end
end
