require 'spec_helper'

describe Hat do 
  let (:params) { {:team => 'Miami Heat',
                   :color => 'red' }}

  let (:test_hat) {Hat.new(params)}

  it 'creates a new drink with params' do
    test_hat.team.should == 'Miami Heat'
    test_hat.color.should == 'red'
  end

  it 'updates the team paramater' do
    test_hat.update(:team => 'LA Lakers')
    test_hat.team.should == 'LA Lakers'
  end
end