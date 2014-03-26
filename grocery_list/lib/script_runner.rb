$: << File.expand_path(File.dirname(__FILE__))
require 'parser'

class ScriptRunner
  def run
    parser = Parser.new('data/grocery_list.txt')
    parser.parse_catagories
    parser.parse_contents
    parser.list.keys.each do |catagory|
      puts "We need to stock up on the following #{catagory}s:"
      puts_items(parser.list, catagory)
    end
  end

  private

  def puts_items(list, catagory)
    list[catagory].each do |item|
      puts "#{item}" 
    end
  end
end

runner = ScriptRunner.new
runner.run
