require 'spec_helper'
 
describe Calculator do
  let (:test_calculator) {Calculator.new(5,5)}

  it "adds two numbers together" do 
    test_calculator.add.should == 10
  end

  it "subtracts the second number from the first" do 
    test_calculator.subtract.should == 0 
  end

  it "multiplies two numbers together" do 
    test_calculator.multiply.should == 25 
  end

  it "divides the first number by the second number" do 
    test_calculator.divide.should == 1
  end
end