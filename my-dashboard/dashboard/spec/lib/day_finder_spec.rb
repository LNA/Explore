require 'spec_helper'

describe DayFinder do 
  let(:test_finder) { DayFinder.new }

  it "finds the correct day" do 
    expect(test_finder.current_day).to eq("Saturday")
  end

  it "finds tomorrow" do 
    expect(test_finder.tomorrow).to eq("Sunday")
  end
end