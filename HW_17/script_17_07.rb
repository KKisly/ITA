# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
re = /[A-Z][a-z]+\s[A-Z][a-z]+/
require 'optparse'

OptionParser.new do |opts|

opts.on("-s","--sentence") do
 $a = ARGV.join(" ").match re
 end
 
 end.parse!
 puts "His name is #{$a}"