# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'

OptionParser.new do |opts|

opts.on("-f","--first_season") do
 $a = ARGV[0]
 end
 
 opts.on("-s","--second_season") do
 $b = ARGV[0]
 end
 
 opts.on("-t","--third_season") do
 $b = ARGV[0]
 end
 
 opts.on("-f","--force_season") do
 $b = ARGV[0]
 end
 end.parse!
 
 puts "Here is sorted (alphabetically) words: #{ARGV.sort.join(" ")}"