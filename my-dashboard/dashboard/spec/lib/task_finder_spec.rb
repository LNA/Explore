require 'spec_helper'

describe TaskFinder do 
  let(:finder) { TaskFinder.new}

  it "finds all task by day" do
    expect(finder.find_by("Monday")).to eq("IPM")
  end
end
