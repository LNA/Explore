require 'spec_helper'
 
describe Parser do
  let (:test_parser) { Parser.new }

  it "parses a text file" do
    parsed_text = test_parser.parse_text('data/input.txt')

    expect(parsed_text.first).to eq ["Adams", "Wednesday", "F", "Black", "06041989"]
    expect(parsed_text.last).to  eq ["Simone", "Nina", "F", "Green", "2211933"]
  end

  it "parses an xml file" do 
    parsed_xml = test_parser.parse_xml('data/input.xml')

    expect(parsed_xml.first).to eq ["Adams", "Wednesday", "F", "Black", "06041989"]
    expect(parsed_xml.last).to  eq ["Simone", "Nina", "F", "Green", "2211933"]
  end
end
