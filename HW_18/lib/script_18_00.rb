# Script = script_17_01.rb
# Description = command line optiones using "trollop"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'

OptionParser.new do |opts|

opts.on("-f","--first") do
 $a = ARGV[0]
 end
 
 opts.on("-s","--second") do
 $b = ARGV[0]
 end
 
 end.parse!
 puts "a + b = #{$a.to_f + $b.to_i}"