# Script = script_21_08.rb
# Description = text file optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'

OptionParser.new do |opts|

opts.on("-i","--input") do
 $file_name = ARGV[0]
 end
 
 end.parse!
 
 lines = []
 lines2 = []
 file = File.open($file_name, "r")
 file.each_line do |line|
 puts line
 lines.push line
 end
 lines2 = lines.sort
 #lines2[0].chomp
 #lines2[1].chomp
 #puts lines2
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Here is sorted (alphabetically) words: #{lines2.join(" ")}"
 #puts "================================================================"