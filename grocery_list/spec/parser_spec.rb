require 'parser'

describe Parser do 
  before :each do
    @parser = Parser.new('data/grocery_list.txt')
    @test_list = @parser.parse_catagories
  end

  it "parses catagory names" do 
   @test_list.should == {"fruit"=>[], "vegetables"=>[], "grains"=>[]}
  end

  it "parses the contents of catagories" do 
    @parser.parse_contents.should == {"fruit"=>["Apples", "Bananas"], "vegetables"=>["Spinach", "Kale"], "grains"=>["Quinoa"]}
  end
end
