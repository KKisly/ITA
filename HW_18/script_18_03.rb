# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'trollop'

opts = Trollop::options do
 opt :first, "first", :short => "-a", :type => :float
 opt :second, "second", :short => "-b", :type => :float
end

puts "a / b = #{opts[:first] / opts[:second]}"