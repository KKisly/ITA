# Script = script_18_03.rb
# Description = command line optiones using "trollop"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'trollop'

opts = Trollop::options do
 opt :first, "first", :short => "-a", :type => :float
 opt :second, "second", :short => "-b", :type => :float
end
puts "=============================================================="
puts "Script: #{__FILE__}"
puts "a / b = #{opts[:first] / opts[:second]}"
puts "=============================================================="