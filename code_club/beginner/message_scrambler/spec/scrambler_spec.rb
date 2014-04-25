require 'spec_helper'
 
describe Scrambler do
  let (:test_scrambler) {Scrambler.new}

  it "returns Z for A" do 
    test_scrambler.change_the_letter("A").should == "Z"
  end
end
