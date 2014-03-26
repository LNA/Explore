$: << File.expand_path(File.dirname(__FILE__) + "/../data/")
require 'nokogiri'

class Parser
  def parse_catagories(file)
    @list = {}

    Nokogiri::XML(File.open(file)).css('list').each do |list|
      list.children.each do |child|
        add_catagory(child)
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
