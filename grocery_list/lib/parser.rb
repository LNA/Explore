$: << File.expand_path(File.dirname(__FILE__) + "/../data/")
require 'nokogiri'

class Parser
  def parse_xml(file)
    @groceries = {}
    Nokogiri::XML(File.open(file)).css('fruit').each do |fruit|
      @groceries[fruit] ||= {} 
    end
    @groceries
  end
end
