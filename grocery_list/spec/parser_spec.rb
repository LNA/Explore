require 'parser'

describe Parser do 
  it "parses text" do 
    parser = Parser.new

    parser.parse_xml('data/grocery_list.txt').should == "s"
  end
end
