# Script = script_21_06.rb
# Description = text file optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'

OptionParser.new do |opts|

opts.on("-i","--input") do
 $file_name = ARGV[0]
 end
 
 end.parse!
 
sum = 0
a = 0
b = 0 
 lines = []
 file = File.open($file_name, "r")
 file.each_line do |line|
 lines.push line
 #puts lines
  end
 lines.each do |num|
 sum += num.to_f
 end
 puts "Sum is #{sum}"
 summary = sum/lines.length 
 #puts summary
 a,b = summary.to_s.split(".")
 if b.to_i == 0 then summary = summary.to_i end
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Average score of following numbers: #{lines[0].to_f}, #{lines[1].to_f}, etc is #{summary.to_f} "
 puts "===================================================================" 
