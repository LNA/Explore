Dir["./lib/*.rb"].each { |file| require file }

parser = Parser.new
ui     = UI.new

command_line_runner = CommandLineRunner.new(parser, ui)
command_line_runner.start