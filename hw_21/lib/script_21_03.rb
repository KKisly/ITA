# Script = script_21_03.rb
# Description = text file options using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
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
 puts lines
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Result of a / b is #{lines[0].to_f / lines[1].to_f}"
 puts "==================================================================="