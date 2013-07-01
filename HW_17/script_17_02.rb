# Script = script_17_01.rb
# Description = command line optiones using "optparse"
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
 puts "My faovourite fruts are: #{$a.to_s.chop} and #{$b.to_s.chop}"