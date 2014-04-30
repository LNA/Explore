require 'spec_helper'

describe Dress do 
  let (:params) { {:length => 'mid',
                   :color => 'pink' }}

  let (:test_dress) {Dress.new(params)}

  it 'creates a new drink with params' do
    test_dress.length.should == 'mid'
    test_dress.color.should == 'pink'
  end

  it 'updates the length paramater' do
    test_dress.update(:length => 'long')
    test_dress.length.should == 'long'
  end
end