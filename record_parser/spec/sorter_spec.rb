require 'spec_helper'

describe Sorter do
  let (:test_sorter) { Sorter.new }
  let (:test_records) { [["Foo", "Bar", "M", "Black", "06041989"], 
                         ["Jackson", "Michael", "M", "Blue", "9281958"],
                         ["Simone", "Nina", "F", "Green", "2211933"]] }

  it "sorts records by gender" do
    sorted_records = test_sorter.sort_by_gender(test_records)

    expect(sorted_records.first).to eq ["Simone", "Nina", "F", "Green", "2211933"]
  end
end