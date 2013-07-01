# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'

OptionParser.new do |opts|

opts.on("-a","--first_octet") do
 $a = ARGV[0]
 end
 
 opts.on("-b","--second_octet") do
 $b = ARGV[0]
 end
 
 opts.on("-c","--third_octet") do
 $c = ARGV[0]
 end
 
 opts.on("-d","--fourth_octet") do
 $d = ARGV[0]
 end
 
 end.parse!
 puts "My IP Address is: #{$a.to_i}.#{$b.to_i}.#{$c.to_i}.#{$d.to_i}"