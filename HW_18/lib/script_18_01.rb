# Script = script_18_01.rb
# Description = command line optiones using "trollop"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'trollop'

opts = Trollop::options do
 opt :first, "first", :short => "-a", :type => :string
 opt :second, "second", :short => "-b", :type => :string
end
puts "=============================================================="
puts "Script: #{__FILE__}"
puts "My favourite fruits are: #{opts[:first]}s and #{opts[:second]}s"
puts "=============================================================="