require 'spec_helper'

describe Posts do
  let (:datastore) {Posts.new}
  let (:post_1)    {Post.new}
  let (:post_2)    {Post.new}

  context '#initialize' do
    it "initializes with empty records" do
      datastore.records.should == {}
    end

    it "should initialize with an id" do
      datastore.id.should == 1
    end
  end

  context '#save' do
    it "saves a post with an id" do
      datastore.save(post_1)

      datastore.records[1].should == post_1
    end

    it 'sets the id on the post that it saves' do
      datastore.save(post_1)

      datastore.records[1].id.should == post_1.id
    end

    it 'increments the id by 1 after saving a post' do
      datastore.save(post_1)
      datastore.save(post_2)

      datastore.records[2].id.should == post_2.id
    end

    it 'can save more than one post' do
      datastore.save(post_1)
      datastore.save(post_2)

      datastore.records[2].should == post_2
    end
  end

  context '#all' do
    it 'returns all posts' do
      datastore.save(post_1)
      datastore.save(post_2)

      datastore.all.should == [post_1, post_2]
    end

    it 'returns an empty array if it has no posts' do
      datastore.all.should == []
    end
  end

  context '#find_by_id' do
    it 'finds a record by the id' do
      datastore.save(post_1)

      datastore.find_by_id(1).should == post_1
    end
  end

  context '#delete_by_id' do
    it 'deletes a post' do
      datastore.save(post_1)
      datastore.save(post_2)
      datastore.delete_by_id(1)

      datastore.all.should == [post_2]
    end
  end
end