require 'spec_helper'
 
describe Calculator do
  let (:test_calculator) {Calculator.new}

  it "adds two numbers together" do 
    test_calculator.add(5,5).should == 10
  end

  it "subtracts the second number from the first" do 
    test_calculator.subtract(5,5).should == 0 
  end

  it "multiplies two numbers together" do 
    test_calculator.multiply(5,5).should == 25 
  end

  it "divides the first number by the second number" do 
    test_calculator.divide(5,5).should == 1
  end
end