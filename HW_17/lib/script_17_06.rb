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
  end
 
 opts.on("-d","--fourth_number") do
 end
 
 opts.on("-e","--fifth_number") do
  end
  
 end.parse!
 
sum = 0
a = 0
b = 0 

 ARGV.each do |num|
 #puts num
 sum += num.to_f
 #puts sum
 end
 summary = sum/ARGV.length
 puts summary
 #a,b = summary.to_s.split(".")
 if b.to_i == 0 then summary = summary.to_i end
 puts "Average score of following numbers: #{$a.to_f}, #{$b.to_f}, etc is #{summary.to_f}"

 
