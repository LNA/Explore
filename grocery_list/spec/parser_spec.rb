require 'parser'

describe Parser do 
  it "parses fruit" do 
    parser = Parser.new

    parser.parse_catagories('data/grocery_list.txt').should == {"fruit"=>[], "vegetables"=>[], "condiments"=>[], "grains"=>[]}
  end
end
