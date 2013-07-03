# Script = script_21_07.rb
# Description = text file optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
 re = /[A-Z][a-z]+\s[A-Z][a-z]+/
 require 'optparse'

OptionParser.new do |opts|

opts.on("-i","--input") do
 $file_name = ARGV[0]
 end
 
 end.parse!
 
 lines = []
 file = File.open($file_name, "r")
 file.each_line do |line|
 puts line
 lines.push line
 end
 $a = lines.join(" ").match re
 #puts lines
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "His name is #{$a}"
 puts "==================================================================="