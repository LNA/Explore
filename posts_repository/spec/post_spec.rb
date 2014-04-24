require 'spec_helper'

describe Post do 
  let (:params) { {:title => 'RailsConf',
                   :text => 'I really like it.',
                   :user => 'LaToya'}  }
  let (:post1) {Post.new(params)}

  it 'creates a new post with params' do
    post1.title.should == 'RailsConf'
    post1.text.should == 'I really like it.'
    post1.user.should == 'LaToya'
  end

  it 'updates the title paramater' do
    post1.update(:title => 'RailsConf: Day 1')
    post1.title.should == 'RailsConf: Day 1'
  end
end