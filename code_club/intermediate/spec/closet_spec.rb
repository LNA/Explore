require 'spec_helper'

describe Closet do
  let (:my_closet)        {Closet.new}
  let (:flower_dress)     {Dress.new}
  let (:blue_dress)       {Dress.new}
  let (:bulls_hat)        {Hat.new}

  context '#initialize' do
    it "initializes with empty records" do
      my_closet.records.should == {}
    end

    it "should initialize with an id" do
      my_closet.id.should == 1
    end
  end

  context '#save' do
    it "saves an item with an id" do
      my_closet.save(flower_dress)

      my_closet.records[1].should == flower_dress
    end

    it 'sets the id on the dress that it saves' do
      my_closet.save(flower_dress)

      my_closet.records[1].id.should == flower_dress.id
    end

    it 'increments the id by 1 after saving an item' do
      my_closet.save(flower_dress)
      my_closet.save(blue_dress)

      my_closet.records[2].id.should == blue_dress.id
    end

    it 'can save more than one item' do
      my_closet.save(flower_dress)
      my_closet.save(blue_dress)
      my_closet.save(bulls_hat)

      my_closet.records[3].should == bulls_hat
    end
  end

  context '#all' do
    it 'returns all items' do
      my_closet.save(flower_dress)
      my_closet.save(bulls_hat)

      my_closet.all.should == [flower_dress, bulls_hat]
    end

    it 'returns an empty array if it has no items' do
      my_closet.all.should == []
    end
  end

  context '#find_by_id' do
    it 'finds a record by the id' do
      my_closet.save(flower_dress)

      my_closet.find_by_id(1).should == flower_dress
    end
  end

  context '#delete_by_id' do
    it 'deletes an item' do
      my_closet.save(flower_dress)
      my_closet.save(bulls_hat)
      my_closet.delete_by_id(1)

      my_closet.all.should == [bulls_hat]
    end
  end
end
