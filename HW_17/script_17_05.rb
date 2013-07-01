# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'

OptionParser.new do |opts|

opts.on("-a","--first_number") do
 $a = ARGV[0]
 end
 
 opts.on("-b","--second_number") do
 $b = ARGV[0]
 end
 
 opts.on("-c","--third_number") do
 $c = ARGV[0]
 end
 
 opts.on("-d","--fourth_number") do
 $d = ARGV[0]
 end
 
 opts.on("-e","--fifth_number") do
 $e = ARGV[0]
 end
 
 end.parse!
 puts "Average score of #{$a.to_f}, #{$b.to_f}, #{$c.to_f}, #{$d.to_f} and #{$e.to_f} = #{($a.to_f + $b.to_f + $c.to_f + $d.to_f + $e.to_f) / 5}"