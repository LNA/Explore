$: << File.expand_path(File.dirname(__FILE__) + "/../data/")
require 'nokogiri'

class Parser
  def initialize(file)
    @file = file
  end

  def parse_catagories
    @list = {}

    Nokogiri::XML(File.open(@file)).css('list').each do |list|
      list.children.each do |child|
        add_catagory(child)
      end
    end
    @list
  end

  def parse_contents
    Nokogiri::XML(File.open(@file)).css('list').each do |list|
      list.children.each do |child|
        @list.each_pair do |catagory, item|
          if catagory == child.name
            @list[child.name] << child.children.text
          end
        end
      end
    end
    @list
  end

private

  def add_catagory(child)
    if child.name != "text"
      @list[child.name] = []
    end
  end
end
